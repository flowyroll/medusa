.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x62dc, %rsi
nop
sub $13006, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
nop
nop
nop
add $25988, %r10
lea addresses_WT_ht+0x3f48, %r14
nop
nop
sub $41337, %rdx
mov $0x6162636465666768, %r15
movq %r15, (%r14)
and %rsi, %rsi
lea addresses_A_ht+0x6c0c, %r10
xor $28205, %rsi
mov (%r10), %r14
nop
nop
nop
nop
add $34648, %r15
lea addresses_UC_ht+0x5d14, %rbx
inc %r14
movb $0x61, (%rbx)
nop
and $29846, %rsi
lea addresses_normal_ht+0x11ddc, %r14
nop
cmp %r15, %r15
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and $44825, %rsi
lea addresses_D_ht+0x23c5, %rsi
nop
nop
cmp %r14, %r14
movb (%rsi), %dl
nop
cmp $15418, %r10
lea addresses_D_ht+0x1643e, %rsi
lea addresses_UC_ht+0x34dc, %rdi
nop
nop
nop
nop
add $33056, %r15
mov $72, %rcx
rep movsl
nop
nop
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_D+0x1a8dc, %rax
nop
nop
nop
nop
add $3752, %rdi
movl $0x51525354, (%rax)
nop
cmp $60409, %rcx

// Store
lea addresses_D+0x1459c, %r13
nop
nop
nop
nop
cmp %r9, %r9
movb $0x51, (%r13)
nop
and $19730, %rax

// Store
lea addresses_A+0x776c, %rbp
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
inc %rbp

// Load
mov $0x6706ca000000051a, %r12
cmp %rax, %rax
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
dec %r9

// Store
lea addresses_UC+0xccdc, %r13
nop
nop
nop
nop
cmp $40648, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovaps %ymm0, (%r13)
nop
nop
cmp $46558, %r9

// Faulty Load
mov $0x2dc, %r13
nop
nop
xor %rbp, %rbp
movntdqa (%r13), %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'46': 12}
46 46 46 46 46 46 46 46 46 46 46 46
*/
