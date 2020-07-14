.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x805e, %rsi
lea addresses_UC_ht+0x72ae, %rdi
nop
nop
nop
and $64613, %rbp
mov $87, %rcx
rep movsl
dec %r9
lea addresses_A_ht+0x329e, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1d8b6, %r14
nop
nop
nop
nop
nop
xor $15335, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x25e, %rsi
lea addresses_normal_ht+0x15e5e, %rdi
add $2095, %rbp
mov $63, %rcx
rep movsl
nop
nop
nop
and $51565, %rcx
lea addresses_UC_ht+0xa05e, %rcx
nop
nop
nop
and $59187, %rdi
movl $0x61626364, (%rcx)
add %r14, %r14
lea addresses_WT_ht+0x639e, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
xor $62870, %r9
lea addresses_D_ht+0x19dde, %rbp
sub $52462, %rdi
movl $0x61626364, (%rbp)
cmp %rsi, %rsi
lea addresses_D_ht+0xccde, %rsi
nop
nop
xor %r14, %r14
movb (%rsi), %al
nop
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x11a5e, %rsi
lea addresses_WT_ht+0x1c11e, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $94, %rcx
rep movsq
nop
sub $64514, %rcx
lea addresses_WT_ht+0x27fc, %rsi
nop
nop
nop
nop
add $4944, %rax
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
sub $52108, %r12
lea addresses_UC_ht+0xa65e, %r12
nop
nop
nop
xor %r14, %r14
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x11292, %rsi
nop
inc %r12
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1ec3e, %rsi
lea addresses_D_ht+0xf67e, %rdi
nop
nop
nop
cmp $17853, %rax
mov $34, %rcx
rep movsq
nop
nop
cmp $59726, %r14
lea addresses_UC_ht+0xaf5e, %r14
nop
nop
dec %r12
mov (%r14), %rbp
nop
nop
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdx

// Store
lea addresses_A+0x13b7e, %rdx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%rdx)
add $37295, %rdx

// Store
lea addresses_WT+0x1ba5e, %r8
nop
nop
nop
xor $52303, %r12
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
sub %r9, %r9

// Store
lea addresses_WC+0x11eb2, %r9
nop
nop
nop
nop
sub $59339, %r11
movw $0x5152, (%r9)
nop
nop
nop
and %r8, %r8

// Store
lea addresses_PSE+0x1125e, %r10
nop
cmp %r11, %r11
movl $0x51525354, (%r10)
nop
dec %rcx

// Store
lea addresses_PSE+0x1125e, %r8
nop
nop
and %r10, %r10
movl $0x51525354, (%r8)
nop
inc %r9

// Load
lea addresses_RW+0x461e, %rcx
nop
nop
nop
nop
nop
add $6993, %rdx
mov (%rcx), %r8w
nop
nop
nop
nop
sub $37881, %r8

// Store
mov $0xb2e, %r8
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovntdq %ymm2, (%r8)
nop
nop
xor $52782, %r8

// Store
lea addresses_RW+0x1bade, %r12
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%r12)
nop
nop
dec %rcx

// Store
mov $0x3d2d8b0000000bbe, %rdx
xor %r12, %r12
movl $0x51525354, (%rdx)
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_PSE+0x1125e, %r10
nop
nop
xor %r11, %r11
movb (%r10), %cl
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'54': 259}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
