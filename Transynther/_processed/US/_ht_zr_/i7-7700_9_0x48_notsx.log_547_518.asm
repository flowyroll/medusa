.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16e74, %rbx
xor %r13, %r13
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0x18ab4, %rax
nop
nop
nop
nop
nop
cmp $36481, %r15
movl $0x61626364, (%rax)
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x15674, %r8
nop
nop
nop
nop
xor %r13, %r13
movb $0x61, (%r8)
nop
nop
nop
and $6451, %rax
lea addresses_normal_ht+0x17834, %rsi
lea addresses_D_ht+0x1674, %rdi
cmp %r13, %r13
mov $105, %rcx
rep movsb
inc %rbx
lea addresses_WC_ht+0x180c4, %r9
and %rcx, %rcx
movl $0x61626364, (%r9)
nop
inc %r8
lea addresses_WC_ht+0xb4b4, %r8
clflush (%r8)
nop
nop
nop
add %rbx, %rbx
movb (%r8), %al
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1043e, %rsi
lea addresses_UC_ht+0xd2a1, %rdi
sub %rbx, %rbx
mov $109, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x17e74, %r10
sub %rax, %rax
movb (%r10), %bl
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x54bc, %r13
nop
nop
nop
add $25193, %r10
mov (%r13), %r8d
nop
inc %rdi
lea addresses_A_ht+0x3928, %rbx
add $34528, %r15
mov (%rbx), %eax
sub %rsi, %rsi
lea addresses_WT_ht+0x15474, %rcx
nop
nop
nop
nop
nop
and $55241, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
cmp $56057, %r15
lea addresses_D_ht+0x17374, %rsi
lea addresses_normal_ht+0x14a20, %rdi
nop
nop
nop
nop
nop
sub $29133, %r15
mov $100, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $38559, %rcx
lea addresses_D_ht+0x11674, %r10
nop
nop
nop
add %r9, %r9
movw $0x6162, (%r10)
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x67d4, %rax
nop
nop
nop
nop
cmp $1003, %rcx
movw $0x6162, (%rax)
nop
nop
nop
nop
and $57646, %rsi
lea addresses_WT_ht+0x1eb54, %rsi
lea addresses_WT_ht+0x5f74, %rdi
nop
and $10603, %r9
mov $22, %rcx
rep movsb
nop
nop
add $27791, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rsi

// Store
mov $0x3dd1bc0000000a84, %r14
clflush (%r14)
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
and $40930, %r13

// Faulty Load
lea addresses_US+0xe74, %rsi
xor %r14, %r14
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rsi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'45': 332, '44': 73, '46': 92, '49': 35, '00': 15}
45 46 46 45 45 46 45 45 45 45 49 45 46 45 45 45 44 44 45 46 45 45 45 45 45 45 45 46 45 49 46 46 44 49 46 46 46 49 46 45 45 45 45 45 00 46 49 49 45 45 44 46 45 45 45 45 45 45 45 44 45 45 45 45 46 45 45 44 44 45 45 45 45 45 46 45 45 49 45 44 44 45 44 45 49 45 45 45 46 45 45 45 45 45 45 45 46 46 00 45 45 45 45 44 45 45 44 45 45 45 45 44 49 49 45 46 45 45 46 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 44 45 45 49 45 46 45 44 45 45 45 44 44 45 45 45 44 45 49 45 45 46 44 46 49 45 49 44 49 45 45 46 44 44 44 46 45 45 44 46 44 45 46 45 45 46 45 45 00 45 45 46 44 45 45 46 45 45 45 44 44 45 49 45 45 44 45 45 45 00 44 45 45 45 46 44 00 45 45 49 45 45 45 45 46 45 46 45 45 49 45 45 44 45 45 45 46 45 45 44 45 45 45 49 45 00 44 45 44 44 46 45 45 45 45 44 44 46 45 45 44 49 45 45 45 44 46 45 46 45 45 45 44 45 44 00 44 46 46 49 45 45 45 45 45 45 45 45 45 46 00 44 45 45 45 45 45 45 45 45 45 46 45 45 00 45 45 45 46 45 45 45 46 46 45 45 45 44 46 45 45 46 46 45 45 45 45 45 45 45 45 46 45 49 45 45 46 45 45 00 46 45 46 44 46 45 45 44 45 44 45 45 45 44 45 45 44 45 45 45 46 49 46 45 45 45 45 45 45 44 46 45 49 46 45 49 44 45 46 45 46 44 45 45 45 45 45 49 44 45 49 46 46 49 45 45 46 45 45 45 46 45 45 45 49 49 45 46 45 45 00 46 45 45 45 45 46 45 44 45 00 45 45 45 46 00 44 45 45 45 45 45 49 46 45 45 00 45 44 45 45 45 45 44 49 46 44 46 45 46 46 45 44 46 45 45 45 45 45 46 45 45 45 45 44 45 45 45 44 45 44 44 44 46 45 45 45 45 46 45 45 46 45 45 46 45 46 45 45 49 45 46 45 45 45 44 45 45 46 46 46 45 45 45 49 45 45 44 44 45 44 45 45 46 45 00 45 45 45 45 45 46 49 45 44 45 46 46 45 44 45 45 45 45 45 44 45 45 45 46 45 45 45 45 45 45 45 45 44 45 46 45
*/
