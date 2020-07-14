.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4dcb, %r13
nop
nop
nop
and %rbx, %rbx
mov (%r13), %si
inc %rdx
lea addresses_normal_ht+0x1a5bb, %r11
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r11), %r8
sub $9497, %r11
lea addresses_WT_ht+0x213b, %r11
nop
nop
nop
and %rsi, %rsi
mov (%r11), %ebx
add $37744, %r8
lea addresses_UC_ht+0x1885b, %rsi
lea addresses_UC_ht+0x35bb, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $68, %rcx
rep movsb
nop
nop
nop
nop
sub $31893, %rsi
lea addresses_UC_ht+0x1beeb, %rsi
xor %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rsi)
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x19977, %rcx
clflush (%rcx)
nop
and $53332, %r8
movb $0x61, (%rcx)
nop
nop
add $47250, %rcx
lea addresses_normal_ht+0x65b, %r13
nop
nop
nop
cmp %rdx, %rdx
mov (%r13), %ebx
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x2d5b, %rsi
cmp $8085, %r8
mov (%rsi), %rbx
nop
nop
nop
xor $64450, %r8
lea addresses_D_ht+0x985b, %rsi
lea addresses_UC_ht+0x1e85b, %rdi
clflush (%rsi)
add $33915, %r8
mov $100, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1e2db, %r8
nop
nop
add $35231, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r8)
nop
add $58231, %r13
lea addresses_A_ht+0x11e62, %rsi
nop
nop
nop
nop
nop
xor %r8, %r8
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0xeb5b, %r13
nop
and %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r13)
inc %r11
lea addresses_D_ht+0x1c5b, %rdi
nop
nop
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%rdi)
xor $26627, %r8
lea addresses_WC_ht+0x1225b, %rdx
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
add $43658, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x385b, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%rdx)
nop
nop
nop
nop
xor $2116, %rdx

// REPMOV
lea addresses_A+0x9741, %rsi
lea addresses_PSE+0x11fdb, %rdi
nop
nop
nop
nop
nop
add $65129, %r15
mov $113, %rcx
rep movsw
nop
nop
nop
nop
cmp $2469, %rsi

// REPMOV
lea addresses_US+0xbfa3, %rsi
lea addresses_RW+0x67cb, %rdi
nop
nop
and %rbp, %rbp
mov $32, %rcx
rep movsw
nop
nop
nop
nop
and $30415, %r13

// Store
lea addresses_UC+0x1605b, %r13
nop
nop
nop
nop
nop
and $8220, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%r13)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x385b, %rdi
nop
nop
add %rsi, %rsi
mov (%rdi), %dx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_US', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'NT': True, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
