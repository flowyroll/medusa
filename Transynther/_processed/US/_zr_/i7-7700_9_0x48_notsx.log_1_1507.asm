.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5c89, %rsi
nop
sub %r8, %r8
mov (%rsi), %r12w
add %r12, %r12
lea addresses_WT_ht+0x849, %r14
nop
and %rbx, %rbx
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1ac89, %rsi
lea addresses_WC_ht+0x10c89, %rdi
xor $17089, %rax
mov $83, %rcx
rep movsw
nop
nop
nop
cmp $53640, %r12
lea addresses_WC_ht+0x6285, %r12
dec %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x12889, %rdi
nop
nop
xor %r8, %r8
mov (%rdi), %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x3149, %rsi
lea addresses_A_ht+0x10c89, %rdi
clflush (%rdi)
nop
nop
add %r14, %r14
mov $14, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x1a489, %r14
nop
nop
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%r14)
cmp %rsi, %rsi
lea addresses_UC_ht+0xe699, %rsi
nop
nop
sub $31547, %rbx
mov (%rsi), %ecx
dec %rcx
lea addresses_WT_ht+0x9b25, %r12
nop
nop
nop
nop
nop
and $31372, %rcx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0xd089, %r8
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r8)
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xf489, %r14
nop
xor $23714, %rdi
mov (%r14), %ax
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0xe409, %rsi
lea addresses_PSE+0x6596, %rdi
nop
add %rax, %rax
mov $107, %rcx
rep movsb
nop
and %rcx, %rcx

// Load
lea addresses_D+0x10fc4, %r10
nop
sub %rsi, %rsi
mov (%r10), %r9w
nop
nop
nop
cmp $64729, %rcx

// Faulty Load
lea addresses_US+0x4489, %rdx
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %r9w
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 9}}
{'00': 1}
00
*/
