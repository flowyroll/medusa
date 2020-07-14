.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1df5b, %r8
sub $37727, %rdx
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x3a3, %rbx
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%rbx), %r11w
and $52786, %rbx
lea addresses_WC_ht+0xf7dd, %r12
nop
nop
sub %rdi, %rdi
movb $0x61, (%r12)
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1a2e3, %rdx
nop
nop
nop
nop
nop
sub $51260, %r12
movb $0x61, (%rdx)
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x15123, %r11
nop
nop
nop
add $62212, %rdx
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xd923, %rsi
lea addresses_WC_ht+0xd4c4, %rdi
nop
nop
nop
add $56501, %rdx
mov $83, %rcx
rep movsb
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x17d23, %rsi
lea addresses_UC_ht+0x1757b, %rdi
nop
nop
nop
xor $8519, %r11
mov $3, %rcx
rep movsb
nop
nop
inc %r12
lea addresses_UC_ht+0x4923, %rsi
lea addresses_WC_ht+0x17c71, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $121, %rcx
rep movsb
nop
xor $37130, %rdx
lea addresses_UC_ht+0x1bb5f, %r8
nop
nop
add $38438, %rcx
movb $0x61, (%r8)
nop
nop
nop
nop
nop
cmp $57892, %r8
lea addresses_D_ht+0x4dc3, %rsi
lea addresses_WT_ht+0x2923, %rdi
nop
nop
nop
nop
xor $9874, %r8
mov $9, %rcx
rep movsl
nop
nop
nop
nop
add $41122, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Faulty Load
lea addresses_A+0x10923, %r10
add %r8, %r8
mov (%r10), %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'35': 70}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
