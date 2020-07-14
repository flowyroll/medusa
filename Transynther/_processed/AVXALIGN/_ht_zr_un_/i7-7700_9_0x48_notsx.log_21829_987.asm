.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa0d5, %rax
dec %r9
movb $0x61, (%rax)
nop
nop
nop
xor $2320, %r9
lea addresses_normal_ht+0x1157d, %rsi
lea addresses_WC_ht+0x18c81, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $109, %rcx
rep movsb
nop
dec %rcx
lea addresses_UC_ht+0x2cd5, %rsi
lea addresses_normal_ht+0x1fe6, %rdi
clflush (%rsi)
nop
add %rbx, %rbx
mov $46, %rcx
rep movsw
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x7d5, %rsi
lea addresses_WT_ht+0x16505, %rdi
nop
nop
nop
cmp %r8, %r8
mov $112, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x18415, %rsi
lea addresses_WC_ht+0x12d35, %rdi
nop
nop
cmp %r9, %r9
mov $71, %rcx
rep movsl
nop
nop
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x13434, %r12
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
cmp $57443, %r12

// Store
lea addresses_WC+0x18825, %rcx
nop
nop
nop
nop
add $5892, %r10
movl $0x51525354, (%rcx)
sub %r8, %r8

// Store
lea addresses_PSE+0x1055, %r8
and %rdx, %rdx
movw $0x5152, (%r8)
nop
nop
xor %rdx, %rdx

// Store
lea addresses_D+0x1e925, %rax
nop
nop
nop
nop
nop
cmp $19537, %r10
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
and $5694, %r12

// Faulty Load
lea addresses_D+0x184d5, %rax
nop
nop
sub %rdi, %rdi
movaps (%rax), %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'c3': 1, '08': 2, '44': 3088, '00': 18738}
00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00
*/
