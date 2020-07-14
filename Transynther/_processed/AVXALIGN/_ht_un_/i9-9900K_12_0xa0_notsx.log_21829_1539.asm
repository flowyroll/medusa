.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15299, %rdx
nop
nop
nop
nop
sub $39084, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
nop
dec %rbx
lea addresses_normal_ht+0x11099, %rsi
lea addresses_A_ht+0xfbb1, %rdi
nop
nop
nop
nop
dec %r11
mov $65, %rcx
rep movsw
nop
nop
cmp $14326, %r11
lea addresses_A_ht+0xd5b9, %rsi
lea addresses_D_ht+0x7344, %rdi
nop
nop
nop
nop
nop
add $47371, %r13
mov $43, %rcx
rep movsw
nop
nop
nop
sub $40208, %rcx
lea addresses_normal_ht+0x1b2a1, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
cmp $2084, %rdi
lea addresses_A_ht+0x5b49, %rsi
lea addresses_A_ht+0xc531, %rdi
clflush (%rdi)
sub %r15, %r15
mov $49, %rcx
rep movsl
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x10c59, %rdx
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
and $0xffffffffffffffc0, %rdx
movntdq %xmm4, (%rdx)
nop
xor $29558, %r15
lea addresses_D_ht+0xdded, %rbx
xor %rdx, %rdx
movb (%rbx), %cl
nop
nop
xor $8683, %r13
lea addresses_WT_ht+0x8bf9, %r13
nop
and %rdi, %rdi
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
sub $40939, %r11
lea addresses_D_ht+0x2499, %rsi
lea addresses_UC_ht+0x1966a, %rdi
nop
nop
nop
sub %r15, %r15
mov $46, %rcx
rep movsq
nop
nop
nop
cmp $19817, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdx

// Store
lea addresses_PSE+0x382d, %rbp
xor $17499, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rbp)
nop
nop
sub $38950, %r15

// Faulty Load
mov $0xc99, %r8
nop
nop
nop
nop
xor $62855, %r15
vmovaps (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'44': 4920, '72': 1, '46': 16820, '45': 60, '49': 28}
46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 44 46 46 46 46 44 46 46 46 46 44 46 44 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 44 46 46 44 46 46 46 46 44 46 46 46 46 44 46 44 46 46 44 44 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 44 44 46 44 46 46 46 44 46 44 46 46 44 44 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 44 46 44 46 44 46 46 44 46 44 46 44 46 46 46 46 46 44 46 46 44 44 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 44 46 44 46 46 46 46 46 44 46 46 46 46 44 46 44 46 46 44 46 46 46 44 46 46 46 46 44 46 46 46 46 44 46 46 46 46 44 46 46 46 44 44 46 46 44 46 46 46 46 44 46 46 46 46 44 44 46 46 44 46 46 44 46 46 44 46 46 46 44 46 46 44 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 44 46 46 46 44 46 46 46 44 46 44 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 44 46 46 44 46 44 46 46 46 44 46 46 44 46 46 44 46 44 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 44 46 46 46 44 46 44 46 46 44 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 44 46 46 44 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 44 46 46 46 46 46 44 44 46 46 46 44 46 44 46 46 46 46 46 44 44 46 44 46 46 46 46 46 44 46 44 44 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 44 46 46 44 46 46 44 46 44 46 46 46 46 46 46 44 46 44 46 46 46 44 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 44 46 46 46 46 44 46 46 46 44 46 46 46 46 46 46 46 44 46 46 44 44 44 46 46 46 44 46 44 44 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 44 46 46 46 44 46 46 46 44 46 44 46 46 46 44 46 46 46 45 44 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 44 46 46 44 46 44 46 46 44 46 46 46 46 44 46 46 46 46 44 46 46 46 44 46 46 44 46 46 44 46 46 46 46 44 46 46 46 46 46 46 44 46 44 46 44 46 46 46 46 46 46 46 44 46 44 46 46 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 44 46 44 46 44 44 46 46 46 46 44 46 46 46 46 44 46 46 46 44 46 46 46 46 46 44 46 46 44 46 46 46 46 44 46 46 46 44 46 46 46 46 44 46 46 46 44 44 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 46 44 46 46 46 46 46 44 46 46 46 44 44 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 44 46 44 46 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 44 44 46 46 46 44 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 44 46 46 46 44 46 46 46 44 46 44 46 46 46 46 46 46 44 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 44 46 46 44 46 46 46 44 46 44 44 46 46 46 46 44 46 44 46 44 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 44 46 46 46 44
*/
