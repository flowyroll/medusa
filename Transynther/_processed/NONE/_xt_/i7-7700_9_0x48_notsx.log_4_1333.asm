.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10fc7, %r13
and $13693, %r14
mov (%r13), %r8w
nop
nop
nop
cmp $38166, %rsi
lea addresses_normal_ht+0x1dbbd, %rcx
nop
nop
add $9337, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
sub $35110, %rcx
lea addresses_WT_ht+0x1083d, %r13
nop
nop
and $47509, %r8
mov (%r13), %esi
nop
nop
nop
nop
nop
and $53143, %rcx
lea addresses_WT_ht+0xf3c7, %r14
nop
nop
nop
xor %rcx, %rcx
mov (%r14), %r8
nop
nop
nop
cmp $21065, %r8
lea addresses_WT_ht+0xd46d, %rsi
lea addresses_D_ht+0x10bc7, %rdi
nop
nop
and $26684, %r10
mov $0, %rcx
rep movsb
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x1da27, %rcx
nop
nop
nop
cmp %r10, %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x116c7, %rsi
nop
add %r8, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xb7c7, %r14
nop
nop
and $48264, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
add $1668, %rcx
lea addresses_normal_ht+0x1bf76, %rcx
nop
nop
nop
and %rbx, %rbx
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x63c7, %rsi
lea addresses_WT_ht+0x667, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $90, %rcx
rep movsb
add %r8, %r8
lea addresses_D_ht+0x1d3c7, %r14
nop
sub %rbx, %rbx
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x10157, %rsi
lea addresses_WT_ht+0x43c7, %rdi
nop
nop
nop
nop
add $64079, %r8
mov $86, %rcx
rep movsb
nop
cmp %r8, %r8
lea addresses_UC_ht+0x4bc7, %r14
cmp %rdi, %rdi
mov (%r14), %esi
sub %rdi, %rdi
lea addresses_WT_ht+0x81c7, %rsi
clflush (%rsi)
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1e3c7, %r10
nop
cmp %rsi, %rsi
mov (%r10), %r13w
nop
nop
sub $42324, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdx

// Store
mov $0x29468100000003c7, %r15
add $2249, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
dec %r15

// Faulty Load
lea addresses_RW+0x3bc7, %r13
nop
nop
nop
and %r14, %r14
mov (%r13), %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}}
{'32': 4}
32 32 32 32
*/
