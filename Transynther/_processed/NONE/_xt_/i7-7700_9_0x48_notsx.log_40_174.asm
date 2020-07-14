.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x4822, %rdx
nop
nop
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rdx)
nop
nop
nop
nop
and $45594, %r12
lea addresses_D_ht+0x9a22, %rsi
nop
add %r12, %r12
mov (%rsi), %ebx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x12a82, %rsi
lea addresses_D_ht+0x17522, %rdi
inc %rdx
mov $40, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1b122, %rcx
nop
nop
nop
nop
xor $54569, %r11
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
sub $6473, %rsi
lea addresses_WT_ht+0x18eb2, %rsi
nop
add %rdx, %rdx
mov (%rsi), %rbx
nop
nop
dec %rdx
lea addresses_UC_ht+0x1bc22, %rdi
nop
cmp $24002, %r11
mov (%rdi), %edx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x14af2, %rdi
nop
nop
nop
and %rdx, %rdx
mov (%rdi), %r11
nop
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rsi

// Store
mov $0x5fc2680000000166, %rsi
nop
nop
inc %r12
movl $0x51525354, (%rsi)
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_RW+0x1ee22, %r14
clflush (%r14)
cmp %r9, %r9
mov (%r14), %eax
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_RW+0x1ee22, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r9, %r9
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 4}}
{'32': 40}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
