.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x11fd3, %r15
cmp %r10, %r10
mov (%r15), %di
nop
nop
nop
nop
sub $29128, %rdx
lea addresses_D_ht+0x1da0f, %r12
nop
and %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1bebf, %rax
nop
nop
inc %rbx
movb $0x61, (%rax)
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x9dc7, %r12
nop
nop
sub $56694, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x3f77, %rsi
lea addresses_WC_ht+0x18f77, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $49, %rcx
rep movsq
nop
nop
inc %r10
lea addresses_WC_ht+0x39c7, %rsi
lea addresses_UC_ht+0x1481f, %rdi
sub $18954, %r15
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $5371, %rdi
lea addresses_D_ht+0x1d477, %rsi
lea addresses_UC_ht+0x6bb7, %rdi
nop
and %rdx, %rdx
mov $25, %rcx
rep movsl
nop
inc %r10
lea addresses_D_ht+0xcc27, %rdi
nop
cmp $64276, %r12
movb (%rdi), %cl
nop
sub $53911, %rbx
lea addresses_WT_ht+0x154fb, %rsi
nop
nop
nop
nop
dec %r12
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
inc %rcx
lea addresses_D_ht+0x14567, %rsi
clflush (%rsi)
nop
nop
cmp %rcx, %rcx
movb $0x61, (%rsi)
and $58701, %rsi
lea addresses_D_ht+0x3a4f, %rdx
nop
nop
nop
nop
nop
sub %rbx, %rbx
movb $0x61, (%rdx)
nop
nop
nop
inc %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rdi
push %rsi

// Store
lea addresses_WT+0x15df7, %rdi
nop
nop
nop
cmp %r14, %r14
movl $0x51525354, (%rdi)
nop
and $50664, %r10

// Store
lea addresses_WC+0xaa77, %r8
nop
nop
nop
nop
xor %r9, %r9
movb $0x51, (%r8)
nop
add $5986, %r14

// Faulty Load
lea addresses_US+0x10077, %r10
nop
nop
nop
nop
dec %r8
movb (%r10), %r9b
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'00': 1}
00
*/
