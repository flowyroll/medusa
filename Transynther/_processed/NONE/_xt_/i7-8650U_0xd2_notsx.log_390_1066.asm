.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9cc1, %r10
xor $10132, %r8
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0xa979, %r12
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r11
movq %r11, (%r12)
nop
nop
nop
dec %r10
lea addresses_D_ht+0xb419, %rsi
lea addresses_UC_ht+0x2d69, %rdi
nop
nop
nop
nop
add $48083, %r11
mov $90, %rcx
rep movsq
nop
sub %r10, %r10
lea addresses_A_ht+0x1a6c9, %r12
nop
nop
nop
nop
nop
xor $12280, %r10
movl $0x61626364, (%r12)
nop
nop
dec %rcx
lea addresses_WT_ht+0x3a1b, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
nop
cmp $27808, %r12
lea addresses_D_ht+0x51a5, %r9
nop
nop
nop
nop
cmp $32652, %r12
movb $0x61, (%r9)
sub %r9, %r9
lea addresses_normal_ht+0x2b9, %r12
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x17a85, %rsi
lea addresses_WC_ht+0x1cb79, %rdi
nop
nop
nop
sub $16370, %r11
mov $40, %rcx
rep movsq
nop
lfence
lea addresses_D_ht+0xf8b9, %rax
nop
nop
nop
nop
nop
cmp $50733, %rdi
movb $0x61, (%rax)
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rdi
push %rdx

// Load
mov $0x5d9b400000000fd9, %r14
nop
nop
nop
nop
xor $58868, %r10
mov (%r14), %r8
nop
nop
cmp $62538, %rbp

// Load
lea addresses_WC+0x19e79, %r14
add %rax, %rax
vmovaps (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0x6859, %r10
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x1a8b9, %rbp
nop
nop
nop
nop
nop
inc %rdi
mov (%rbp), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'33': 390}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
