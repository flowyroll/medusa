.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1236, %r14
nop
nop
nop
dec %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r14)
nop
add $10251, %r10
lea addresses_UC_ht+0xb76e, %rbx
nop
nop
nop
nop
and $32307, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm7
and $0xffffffffffffffc0, %rbx
movaps %xmm7, (%rbx)
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x1be16, %r9
nop
nop
nop
nop
nop
xor $10512, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %r9
movntdq %xmm6, (%r9)
nop
nop
nop
xor $17907, %r14
lea addresses_D_ht+0x5836, %r14
xor %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
nop
nop
sub $19667, %r10
lea addresses_normal_ht+0xf57a, %r15
nop
xor %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%r15)
add $11129, %rbx
lea addresses_A_ht+0xfab6, %r15
nop
nop
nop
inc %r10
mov (%r15), %ax
nop
nop
and $8145, %r9
lea addresses_D_ht+0x6f16, %rsi
lea addresses_WT_ht+0xb236, %rdi
nop
nop
sub %r9, %r9
mov $9, %rcx
rep movsl
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_normal+0x16036, %rax
nop
nop
and $44552, %rdx
movw $0x5152, (%rax)
add %rbp, %rbp

// Load
lea addresses_US+0xae36, %rbx
nop
nop
xor $35023, %rcx
mov (%rbx), %r12
cmp $53480, %r10

// Faulty Load
mov $0x6b575d0000000a36, %r10
nop
nop
nop
nop
and %rax, %rax
movaps (%r10), %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'ff': 12, 'a4': 10, '46': 11227, '49': 15, '00': 10565}
00 46 46 ff 46 46 46 00 46 46 00 00 00 46 46 46 46 46 00 46 46 46 46 46 46 00 00 46 00 46 00 46 46 46 46 46 46 00 00 46 00 46 46 00 46 00 00 46 00 46 46 00 46 46 00 46 00 46 00 46 00 46 00 00 00 46 46 00 00 46 46 00 00 00 00 46 46 46 46 00 00 00 46 00 46 00 46 00 46 00 00 00 46 46 46 46 00 00 46 00 00 46 00 46 46 00 00 00 46 46 46 46 00 00 46 46 00 46 00 00 00 46 00 46 00 46 46 00 00 46 46 00 00 00 46 46 00 00 46 46 00 00 46 00 00 00 46 46 46 46 00 46 46 00 00 46 46 46 46 00 00 00 00 46 00 00 46 46 00 46 00 46 46 00 46 00 46 00 46 46 46 00 46 46 46 46 46 00 46 46 46 46 00 46 00 00 46 00 00 46 46 46 00 00 00 46 00 00 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 00 46 46 46 00 00 46 46 46 00 00 00 46 46 00 46 00 00 46 46 46 00 00 46 00 00 00 46 46 00 46 46 00 00 00 00 46 00 00 00 46 00 46 00 46 00 46 46 46 46 00 46 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 46 46 46 46 46 46 46 00 46 46 46 46 00 46 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 46 00 46 00 46 46 00 46 46 00 46 46 00 46 46 46 00 46 46 00 00 00 00 00 00 46 00 00 46 46 00 00 00 46 00 00 46 00 46 00 46 46 00 46 46 46 00 00 46 46 46 46 00 00 46 00 00 46 00 46 00 46 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 46 46 46 00 46 46 46 00 00 00 00 00 00 00 46 46 46 46 46 46 46 46 00 00 46 00 00 00 46 00 00 00 00 00 46 46 46 00 00 00 46 46 46 00 00 46 00 46 46 00 00 00 00 46 00 00 00 46 00 46 46 46 46 00 46 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 46 46 00 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 46 00 00 46 00 00 46 46 00 46 00 00 46 46 00 46 00 46 00 00 46 00 46 46 46 00 46 46 00 00 46 00 46 46 46 00 00 00 00 46 46 46 00 46 00 00 46 46 46 00 00 46 46 46 46 46 46 00 46 46 46 00 00 00 46 46 46 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 46 46 00 46 00 46 46 00 00 46 00 00 46 00 46 00 46 46 46 00 00 46 00 46 46 00 00 46 00 46 00 46 00 46 46 00 46 00 00 46 00 00 46 00 46 46 00 00 46 46 00 46 00 46 00 00 46 00 00 46 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 46 00 46 46 46 46 00 00 46 46 46 46 46 00 00 00 46 00 46 46 00 00 46 00 46 46 46 46 46 46 46 00 00 46 00 00 00 00 46 46 00 00 46 00 46 46 46 00 46 46 46 00 46 46 46 00 00 46 00 00 00 46 00 46 46 46 00 00 46 00 00 00 00 00 46 46 46 00 00 00 00 46 46 00 46 46 46 46 46 00 46 00 46 46 46 00 46 00 46 46 46 00 46 46 00 00 00 46 00 00 46 00 46 46 00 00 00 00 00 46 00 00 46 00 46 46 00 46 00 00 46 00 46 46 00 00 00 46 46 46 46 00 46 00 00 00 00 00 46 46 00 46 00 00 00 00 46 00 46 00 00 46 00 00 00 46 46 46 00 00 46 46 46 46 46 46 00 46 00 00 00 00 46 46 46 00 46 00 00 46 46 00 00 46 00 46 00 00 00 00 00 00 00 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 00 00 00 00 46 46 46 46 46 00 46 00 00 46 46 46 46 00 00 46 46 46 46 46 00 00 00 46 00 46 46 00 00 46 00 46 00 46 00 46 00 46 00 46 00 46 46 00 00 00 00 46 46 00 00 46 46 46 46 00 00 00 00 46 46 46 00 46 46 46 46 00 00 46 00 00 46 46 46 46 00 46
*/
