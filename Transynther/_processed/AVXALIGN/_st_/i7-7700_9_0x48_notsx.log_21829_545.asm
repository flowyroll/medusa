.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x101f, %rsi
lea addresses_WC_ht+0x201f, %rdi
nop
nop
nop
add %r13, %r13
mov $4, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1d01f, %r14
add $4117, %r9
movl $0x61626364, (%r14)
nop
nop
nop
nop
add $4736, %rcx
lea addresses_D_ht+0x116d9, %rcx
nop
nop
cmp %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
cmp $57444, %r9
lea addresses_WT_ht+0x261f, %rbp
add $37661, %rsi
mov (%rbp), %r9w
nop
nop
nop
nop
nop
xor $663, %rsi
lea addresses_normal_ht+0x1681f, %r14
add $50883, %r9
movw $0x6162, (%r14)
nop
nop
nop
sub $37161, %rcx
lea addresses_UC_ht+0x14a5f, %r13
nop
nop
nop
nop
add $29737, %r14
mov (%r13), %rcx
nop
nop
nop
xor $11118, %r14
lea addresses_D_ht+0xad1f, %rsi
lea addresses_WT_ht+0x8a1f, %rdi
nop
nop
nop
add $6639, %rbp
mov $59, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x1bb5f, %r13
clflush (%r13)
add $53469, %rsi
mov (%r13), %r9w
nop
cmp $13433, %rcx
lea addresses_normal_ht+0x97a7, %rsi
lea addresses_D_ht+0x4c1f, %rdi
nop
nop
add $35323, %r12
mov $57, %rcx
rep movsb
nop
nop
dec %r13
lea addresses_UC_ht+0x1b41f, %r9
nop
nop
nop
add %r14, %r14
movw $0x6162, (%r9)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x15f9f, %rdi
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%rdi)
add %rcx, %rcx
lea addresses_WT_ht+0x5ea3, %rsi
lea addresses_WT_ht+0x1581f, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $16, %rcx
rep movsq
nop
nop
nop
dec %rcx
lea addresses_D_ht+0xd33f, %r13
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x4a3f, %rsi
lea addresses_UC_ht+0x1f1f, %rdi
nop
nop
nop
cmp $2620, %r9
mov $115, %rcx
rep movsw
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WT+0x81f, %rbp
nop
nop
nop
nop
cmp $47175, %r12
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
nop
add $44512, %r12

// Load
lea addresses_D+0x121, %r13
clflush (%r13)
nop
nop
nop
nop
nop
xor $5828, %r11
mov (%r13), %rdi
nop
nop
nop
nop
add $17194, %rax

// Faulty Load
lea addresses_PSE+0xd01f, %r13
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%r13), %cx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
