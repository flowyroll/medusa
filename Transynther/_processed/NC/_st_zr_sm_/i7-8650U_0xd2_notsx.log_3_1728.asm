.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf699, %rsi
lea addresses_WC_ht+0x3299, %rdi
nop
nop
add $58285, %rdx
mov $86, %rcx
rep movsb
sub $8236, %rbp
lea addresses_WT_ht+0x19699, %r9
nop
nop
nop
nop
nop
inc %rbx
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0xd499, %rbp
clflush (%rbp)
nop
xor $28071, %rdx
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
cmp $41547, %r9
lea addresses_D_ht+0xb699, %rbp
nop
add $48656, %r9
mov (%rbp), %edi
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x17359, %rbx
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rbx)
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x1c139, %rbp
nop
nop
nop
nop
nop
dec %rdi
vmovups (%rbp), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
inc %rbx
lea addresses_D_ht+0x15ef9, %rsi
lea addresses_normal_ht+0xfe89, %rdi
nop
nop
nop
nop
inc %rax
mov $108, %rcx
rep movsw
cmp $52706, %rbx
lea addresses_WC_ht+0x11e6d, %rsi
lea addresses_A_ht+0x10846, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $92, %rcx
rep movsb
nop
and $28789, %rcx
lea addresses_UC_ht+0x1d7c9, %rcx
nop
lfence
movl $0x61626364, (%rcx)
xor $61894, %rcx
lea addresses_normal_ht+0xfc19, %rdi
nop
nop
nop
nop
nop
xor $64987, %rbp
movb (%rdi), %al
nop
nop
and $39347, %rbp
lea addresses_D_ht+0x15899, %rbx
nop
nop
nop
xor %rcx, %rcx
movb (%rbx), %r9b
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0xfc99, %rbp
nop
nop
cmp $12521, %rbx
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
nop
nop
xor $63202, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rdi
push %rsi

// Store
lea addresses_UC+0x859, %rsi
cmp %r11, %r11
movw $0x5152, (%rsi)
nop
nop
nop
nop
sub %r12, %r12

// Store
mov $0x4c60f0000000a99, %rsi
and %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rsi)
and %r15, %r15

// Store
mov $0x33db7c00000009a5, %rsi
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%rsi)
sub %r12, %r12

// Store
lea addresses_WC+0xc019, %r12
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r12)
add %rax, %rax

// Store
lea addresses_WT+0x2299, %r12
sub $56111, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r12)
nop
nop
xor $32561, %r11

// Store
lea addresses_A+0x19299, %rax
nop
nop
and $29397, %r15
movw $0x5152, (%rax)
nop
sub %rdi, %rdi

// Faulty Load
mov $0x4c60f0000000a99, %r9
nop
nop
nop
and %rdi, %rdi
mov (%r9), %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 2, '58': 1}
00 00 58
*/
