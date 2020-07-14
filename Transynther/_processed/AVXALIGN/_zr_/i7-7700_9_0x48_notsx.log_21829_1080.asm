.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x74a, %r10
nop
nop
and %rsi, %rsi
mov (%r10), %bp
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x1d40a, %rsi
lea addresses_UC_ht+0x13b4a, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $115, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x589a, %rbp
nop
nop
nop
nop
cmp $50460, %rsi
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x5457, %r10
nop
nop
nop
nop
nop
add $7448, %r9
movb (%r10), %al
nop
nop
nop
nop
nop
add $17188, %rcx
lea addresses_D_ht+0x7bbd, %rsi
lea addresses_D_ht+0x8343, %rdi
cmp %r10, %r10
mov $61, %rcx
rep movsw
nop
sub %rbp, %rbp
lea addresses_A_ht+0x18f4a, %rsi
lea addresses_WC_ht+0x1396e, %rdi
nop
nop
nop
and $32412, %r15
mov $96, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $60712, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x1b5ca, %rsi
lea addresses_PSE+0x1a7a6, %rdi
nop
dec %rbx
mov $5, %rcx
rep movsl
nop
xor %rdi, %rdi

// REPMOV
lea addresses_normal+0x1743a, %rsi
lea addresses_D+0x5ae7, %rdi
add $6046, %r15
mov $105, %rcx
rep movsw
and $35309, %r10

// Store
lea addresses_D+0x93be, %r14
nop
nop
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r14)

// Exception!!!
nop
nop
mov (0), %rcx
nop
and $29511, %rsi

// Store
lea addresses_normal+0x6942, %rbx
xor $52728, %r15
movl $0x51525354, (%rbx)
nop
nop
inc %rdi

// Store
lea addresses_D+0x1662a, %r8
nop
nop
nop
nop
nop
xor $6531, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
cmp $51317, %rcx

// Store
lea addresses_WC+0xc5ca, %rsi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
xor %rcx, %rcx

// Store
lea addresses_A+0xac90, %rsi
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_normal+0x122a, %rbx
nop
nop
nop
add $60905, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rbx)
nop
nop
cmp %rcx, %rcx

// Store
mov $0x60671e0000000a60, %r14
nop
add %r15, %r15
movw $0x5152, (%r14)
nop
nop
and %rsi, %rsi

// Faulty Load
mov $0x141b14000000074a, %r15
nop
nop
nop
nop
dec %rdi
movb (%r15), %r10b
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
