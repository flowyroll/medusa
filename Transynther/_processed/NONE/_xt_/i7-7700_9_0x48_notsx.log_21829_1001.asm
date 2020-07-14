.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e545, %rsi
lea addresses_UC_ht+0x11145, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $40761, %r12
mov $117, %rcx
rep movsq
nop
sub $23370, %r15
lea addresses_WC_ht+0x16945, %r14
nop
nop
xor $12529, %rbp
mov (%r14), %r15
xor %r15, %r15
lea addresses_UC_ht+0x96e1, %r12
nop
nop
nop
cmp $61703, %rbp
mov $0x6162636465666768, %r15
movq %r15, (%r12)
nop
nop
nop
nop
nop
cmp $2836, %rdi
lea addresses_A_ht+0x1b945, %rsi
lea addresses_UC_ht+0xa691, %rdi
nop
nop
nop
and %rax, %rax
mov $38, %rcx
rep movsw
nop
nop
xor $50811, %rbp
lea addresses_D_ht+0x9945, %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%r14), %r15b
nop
nop
and %r12, %r12
lea addresses_D_ht+0x17fbf, %r12
nop
nop
sub $19059, %rsi
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x7731, %rdx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x5152, (%rdx)
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_WT+0x13945, %r15
nop
nop
nop
nop
xor %r10, %r10
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
