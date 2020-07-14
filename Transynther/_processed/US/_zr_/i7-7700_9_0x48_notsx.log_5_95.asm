.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14c8, %r15
and $15817, %r14
mov (%r15), %edi
dec %r11
lea addresses_WC_ht+0xe4a0, %rbp
nop
nop
nop
nop
xor %rsi, %rsi
movb (%rbp), %dl
sub %r15, %r15
lea addresses_WC_ht+0xc9d8, %rdi
nop
dec %r15
mov (%rdi), %r11w
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x3f90, %rdx
nop
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
add $36214, %rdi
lea addresses_UC_ht+0xff6e, %r11
nop
nop
nop
add $8382, %rdx
mov (%r11), %esi
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x5990, %rdi
nop
xor %rbp, %rbp
mov (%rdi), %edx
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1a690, %r15
nop
sub $43440, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0x3304, %rsi
lea addresses_A_ht+0x14a90, %rdi
clflush (%rsi)
nop
sub $4243, %r11
mov $65, %rcx
rep movsb
nop
nop
nop
nop
xor $11488, %rdx
lea addresses_D_ht+0x10538, %r11
clflush (%r11)
nop
cmp %rdx, %rdx
movb (%r11), %r15b
nop
add $29593, %rbp
lea addresses_A_ht+0x17340, %rbp
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x13408, %rsi
lea addresses_D+0xea90, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $75, %rcx
rep movsb
dec %rsi

// Faulty Load
lea addresses_US+0x17e90, %rsi
and %rdi, %rdi
mov (%rsi), %ecx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'00': 5}
00 00 00 00 00
*/
