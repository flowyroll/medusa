.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x9e41, %r8
nop
nop
sub %rax, %rax
mov (%r8), %r9
cmp %rdx, %rdx
lea addresses_UC_ht+0x1d0a1, %r15
clflush (%r15)
nop
nop
nop
sub $30037, %r12
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x1dca1, %r12
clflush (%r12)
sub %r9, %r9
movb $0x61, (%r12)
nop
nop
nop
nop
nop
cmp $40324, %r15
lea addresses_WT_ht+0xe9a1, %r9
nop
nop
nop
nop
nop
add $15526, %rcx
movb (%r9), %r15b
dec %r8
lea addresses_WC_ht+0x905e, %r8
nop
and $44483, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x1b961, %rsi
lea addresses_WC_ht+0xc8a1, %rdi
nop
nop
cmp $32484, %r15
mov $0, %rcx
rep movsq
nop
nop
nop
nop
sub $59725, %rdi
lea addresses_UC_ht+0xcf21, %rsi
lea addresses_normal_ht+0x3770, %rdi
clflush (%rsi)
nop
sub %rax, %rax
mov $92, %rcx
rep movsw
nop
nop
and $20110, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x6a1, %rsi
lea addresses_D+0x9e11, %rdi
nop
nop
nop
sub %rax, %rax
mov $67, %rcx
rep movsl
nop
dec %rbx

// Store
lea addresses_D+0xc42b, %rsi
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovntdq %ymm2, (%rsi)
nop
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_A+0x74a1, %rbx
nop
nop
nop
and $43673, %r12
mov (%rbx), %rax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
