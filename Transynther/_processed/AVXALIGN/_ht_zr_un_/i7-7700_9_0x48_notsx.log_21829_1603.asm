.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14204, %r9
nop
and %r13, %r13
mov (%r9), %r15w
nop
and $46908, %rdi
lea addresses_WC_ht+0xfbe8, %rsi
lea addresses_D_ht+0x184a8, %rdi
inc %r8
mov $38, %rcx
rep movsq
nop
nop
nop
nop
cmp $40899, %rsi
lea addresses_WT_ht+0x1668, %rsi
lea addresses_WC_ht+0x11e28, %rdi
and $22969, %rbp
mov $63, %rcx
rep movsw
nop
nop
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x18ce8, %rbp
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rbp)
nop
inc %rsi
lea addresses_A_ht+0xf9c8, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x1a6e8, %rbp
nop
inc %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x64e8, %rbp
nop
nop
nop
cmp $35194, %r8
movb $0x61, (%rbp)
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x3168, %rsi
lea addresses_A_ht+0x13fa8, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $27, %rcx
rep movsb
nop
add $48669, %r15
lea addresses_WC_ht+0x18a08, %rsi
nop
nop
nop
nop
nop
xor $12391, %rbp
movw $0x6162, (%rsi)
and $61272, %rdi
lea addresses_WC_ht+0x1eb68, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
cmp $56210, %r15
lea addresses_normal_ht+0x17ce8, %rsi
lea addresses_WT_ht+0xd468, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $16849, %rbp
mov $7, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $11706, %r13
lea addresses_UC_ht+0x98e8, %r15
nop
nop
nop
nop
nop
add %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
add $54683, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_WC+0x110e8, %r15
nop
nop
and %rax, %rax
movaps (%r15), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'48': 9792, '44': 832, 'ff': 2, '49': 920, '00': 10283}
00 48 48 00 00 48 48 00 00 00 48 48 48 00 49 48 48 48 48 49 48 48 48 00 48 00 48 49 48 48 48 48 48 48 48 48 48 48 00 00 48 48 00 48 49 00 48 48 00 00 44 48 00 00 00 48 00 00 48 00 48 48 00 48 00 44 48 48 00 00 00 44 48 48 00 48 48 00 44 44 00 48 48 48 44 00 48 48 49 48 48 00 48 48 00 48 00 48 48 00 00 00 48 48 00 00 48 48 00 00 48 48 48 00 48 00 00 48 48 00 00 48 00 48 00 00 48 48 48 48 48 00 00 44 48 00 00 00 00 48 48 00 48 48 00 00 48 00 48 48 00 00 48 00 48 48 00 00 00 48 48 48 48 00 00 00 00 48 00 00 00 00 00 00 48 48 48 48 48 00 00 48 00 00 00 48 48 00 00 48 44 48 00 00 00 00 00 48 48 48 00 48 48 44 00 44 48 48 48 00 00 00 49 44 48 00 44 44 00 48 00 48 49 00 48 48 00 44 48 48 48 00 00 48 00 48 49 48 00 00 48 00 00 48 00 00 00 48 48 48 00 48 00 48 48 48 00 00 48 48 00 48 00 00 00 48 48 49 00 00 48 00 48 00 44 48 00 00 00 00 00 48 48 00 00 00 49 00 48 00 00 48 48 48 48 48 00 44 48 48 48 48 48 48 00 48 48 00 48 48 00 00 48 48 48 48 49 00 00 48 00 00 48 00 48 48 00 00 48 48 48 48 48 00 00 00 48 48 48 00 48 00 00 44 48 48 48 48 00 00 48 48 00 48 00 48 48 00 48 48 48 48 49 00 48 48 48 00 00 48 48 00 00 48 48 00 44 00 00 00 48 00 48 00 00 44 00 00 00 48 48 48 48 48 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 48 00 00 00 00 48 48 00 48 00 00 48 00 48 00 48 48 48 48 00 49 49 00 00 00 49 48 48 44 48 00 00 49 48 48 48 00 48 48 48 00 48 48 00 00 48 48 00 00 48 00 00 48 48 48 49 00 48 48 00 48 48 48 48 48 00 49 48 00 00 48 00 00 00 44 48 00 00 00 00 48 48 00 00 48 48 48 00 00 00 48 00 48 48 00 00 48 48 49 48 00 48 48 00 48 48 48 00 48 00 48 48 48 48 48 00 48 48 00 00 48 00 48 00 00 48 00 00 48 00 00 00 48 48 48 00 48 48 48 44 44 48 00 00 00 00 00 48 00 48 44 48 48 48 48 48 00 00 48 48 48 00 48 48 00 00 00 00 00 48 00 00 48 00 00 44 44 00 00 00 00 00 00 00 48 48 44 48 48 48 00 00 44 48 00 00 48 00 00 00 48 48 00 48 48 00 00 48 49 48 00 44 48 00 48 48 48 48 48 48 48 48 00 48 48 00 00 48 00 00 00 44 00 48 00 00 48 00 00 00 00 48 48 48 00 00 48 48 00 49 00 00 44 48 00 48 48 00 00 48 00 44 00 00 00 48 00 00 00 44 48 48 00 00 48 00 44 48 00 00 49 00 00 00 00 48 48 00 00 48 00 48 49 48 48 00 00 48 48 48 48 00 48 49 00 00 00 48 48 48 00 48 00 00 00 48 00 00 00 00 00 48 48 00 48 44 48 00 48 00 48 00 48 48 48 48 00 00 00 00 00 00 00 48 48 00 00 48 49 44 48 48 00 48 00 00 48 48 48 48 48 00 48 48 48 00 00 49 48 48 00 48 00 00 48 44 00 44 00 48 00 00 48 48 48 48 48 48 00 00 48 00 49 49 49 48 48 00 48 48 48 48 48 49 00 00 00 49 48 00 49 49 48 48 00 00 00 00 48 49 00 00 48 00 48 00 00 49 48 48 48 00 48 00 00 00 48 00 48 00 00 00 44 00 49 48 48 48 48 00 48 48 00 48 00 00 00 48 00 00 48 00 00 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 00 00 48 48 00 48 48 48 00 48 00 00 49 48 48 00 00 48 00 00 48 48 48 00 00 00 48 00 00 00 48 48 00 00 48 48 48 48 00 48 49 48 00 44 00 48 00 48 00 00 00 00 48 48 00 48 00 00 48 48 00 00 48 48 48 00 48 48 00 49 48 00 48 48 00 00 00 48 48 00 48 00 00 00 00 00 00 00 48 00 48 48 48 48 00 00 00 00 48 48 00 48 48 48 00
*/
