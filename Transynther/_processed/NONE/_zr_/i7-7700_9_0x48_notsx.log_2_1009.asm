.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x3100, %rsi
lea addresses_D_ht+0x11d00, %rdi
nop
nop
nop
and %r15, %r15
mov $80, %rcx
rep movsb
nop
sub $39180, %r13
lea addresses_D_ht+0x3d00, %rsi
lea addresses_WC_ht+0x7e00, %rdi
clflush (%rsi)
sub $32020, %rax
mov $121, %rcx
rep movsq
nop
xor %rax, %rax
lea addresses_UC_ht+0x1ac0, %rsi
lea addresses_UC_ht+0x1906c, %rdi
clflush (%rsi)
nop
nop
xor %r13, %r13
mov $88, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x1380, %rcx
nop
cmp %rdx, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rdi

// Store
mov $0x4428480000000700, %rdi
nop
nop
nop
inc %rbp
movw $0x5152, (%rdi)
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0x4500, %rbp
nop
nop
dec %r12
movb $0x51, (%rbp)
and %rbx, %rbx

// Store
lea addresses_D+0x3600, %rdi
nop
nop
nop
add $59541, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
sub $30825, %rbx

// Faulty Load
lea addresses_A+0x8d00, %rbp
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rbp), %r12d
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'00': 2}
00 00
*/
