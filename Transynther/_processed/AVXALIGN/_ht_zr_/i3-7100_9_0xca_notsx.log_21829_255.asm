.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x919f, %rbp
nop
nop
nop
nop
cmp %rax, %rax
movb (%rbp), %r15b
nop
and %r14, %r14
lea addresses_UC_ht+0x17596, %rdx
nop
nop
nop
and $17518, %r8
mov (%rdx), %r14w
nop
nop
sub %rbp, %rbp
lea addresses_A_ht+0xd96, %r8
nop
nop
nop
nop
add $15169, %rsi
movl $0x61626364, (%r8)
inc %r14
lea addresses_UC_ht+0xa4d9, %r15
nop
nop
nop
nop
sub $33319, %r14
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x1cb96, %rsi
nop
nop
nop
nop
nop
cmp %r15, %r15
movw $0x6162, (%rsi)
nop
dec %rbp
lea addresses_UC_ht+0xb781, %r14
nop
nop
add %rax, %rax
movb $0x61, (%r14)
nop
nop
xor $18239, %rdx
lea addresses_UC_ht+0x15e56, %rsi
lea addresses_WT_ht+0x1796, %rdi
nop
nop
inc %rax
mov $38, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0xc886, %rdx
nop
nop
nop
sub %r8, %r8
mov (%rdx), %ebp
cmp $27419, %rdx
lea addresses_UC_ht+0x18606, %r15
clflush (%r15)
nop
nop
nop
nop
cmp $25153, %rax
movb (%r15), %r8b
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x19396, %rsi
lea addresses_UC_ht+0x17116, %rdi
clflush (%rdi)
nop
nop
nop
nop
mfence
mov $60, %rcx
rep movsw
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x2996, %rsi
lea addresses_A_ht+0xc416, %rdi
sub $5442, %r14
mov $72, %rcx
rep movsl
nop
nop
nop
xor $44595, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rbx

// Faulty Load
lea addresses_PSE+0xfb96, %rbp
nop
nop
nop
add $43435, %rax
movaps (%rbp), %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'46': 2041, '00': 18825, '49': 963}
00 46 00 00 46 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 46 00 00 00 00 49 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 49 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 49 00 46 00 00 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 49 46 46 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 49 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 46 00 00 00 49 46 00 00 49 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 49 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00
*/
