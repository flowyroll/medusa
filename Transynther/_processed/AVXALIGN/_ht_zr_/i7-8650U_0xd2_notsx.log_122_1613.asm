.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c54c, %rcx
and %rax, %rax
mov (%rcx), %rbp
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x2498, %rax
xor %r12, %r12
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
xor %r12, %r12
lea addresses_normal_ht+0x19d98, %rsi
lea addresses_D_ht+0x6a18, %rdi
nop
nop
add $41777, %rax
mov $90, %rcx
rep movsw
nop
nop
nop
cmp $27132, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xc518, %rdx
nop
cmp %r15, %r15
movb $0x51, (%rdx)
nop
nop
add $28728, %r10

// Store
lea addresses_normal+0x57d8, %r11
nop
nop
nop
dec %rax
movl $0x51525354, (%r11)
nop
dec %r15

// REPMOV
lea addresses_normal+0x1b898, %rsi
lea addresses_WC+0x19b98, %rdi
nop
nop
nop
nop
dec %rbx
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
add $1480, %rcx

// Load
lea addresses_WC+0x1cc98, %r11
nop
cmp %r10, %r10
movups (%r11), %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_PSE+0x55d8, %rcx
nop
nop
nop
nop
sub $63244, %rdi
mov (%rcx), %eax
nop
nop
add $4670, %r15

// Store
lea addresses_normal+0xa238, %rcx
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_PSE+0x17498, %r15
nop
and %rsi, %rsi
movb $0x51, (%r15)
nop
nop
nop
nop
nop
sub $60756, %rcx

// Store
lea addresses_WT+0x8c58, %rbx
nop
sub $47603, %rcx
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
add $7223, %rax

// Store
lea addresses_PSE+0x17498, %rax
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
sub %rcx, %rcx

// REPMOV
lea addresses_WC+0xb498, %rsi
lea addresses_D+0x8b58, %rdi
nop
nop
sub $20451, %r11
mov $50, %rcx
rep movsq
nop
nop
nop
nop
and $45708, %rsi

// Faulty Load
lea addresses_PSE+0x17498, %r15
sub $11611, %rbx
vmovntdqa (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'00': 113, '44': 6, '49': 3}
00 00 00 00 00 00 00 00 00 44 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 49 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 49 00 00 00 00 00 00 00
*/
