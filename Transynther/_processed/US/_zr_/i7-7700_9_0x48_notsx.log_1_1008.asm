.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x10f20, %rsi
nop
cmp $14102, %r14
mov (%rsi), %di
xor $1125, %rsi
lea addresses_WC_ht+0x1e928, %rbp
nop
nop
dec %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbp)
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x7030, %rsi
lea addresses_UC_ht+0x104d4, %rdi
nop
nop
nop
cmp $44110, %rbp
mov $23, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $12714, %r14
lea addresses_D_ht+0xc396, %r14
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
add %r10, %r10
lea addresses_UC_ht+0xebac, %rbp
clflush (%rbp)
nop
add %rcx, %rcx
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
sub $58489, %rdx
lea addresses_D_ht+0x11520, %rsi
lea addresses_WT_ht+0x17ee0, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $62, %rcx
rep movsw
nop
nop
nop
add $14885, %r14
lea addresses_WT_ht+0x13e20, %rsi
lea addresses_UC_ht+0x17fa0, %rdi
nop
nop
add $46314, %r13
mov $23, %rcx
rep movsb
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x11910, %r14
nop
nop
nop
nop
inc %rdi
movb (%r14), %r10b
sub %r14, %r14
lea addresses_WC_ht+0xdca0, %r14
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%r14)
nop
lfence
lea addresses_WT_ht+0x7ca0, %rdi
xor $32792, %rsi
mov (%rdi), %r14
nop
nop
inc %rbp
lea addresses_normal_ht+0xa8a0, %rdx
nop
nop
nop
nop
sub %r14, %r14
movb (%rdx), %r10b
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x128a0, %rdx
nop
nop
nop
sub %r10, %r10
movl $0x61626364, (%rdx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x13b18, %r13
xor $64342, %r10
movb (%r13), %r14b
inc %r14
lea addresses_WC_ht+0x1ce20, %rsi
lea addresses_WC_ht+0x40a0, %rdi
nop
nop
nop
dec %r14
mov $107, %rcx
rep movsl
nop
nop
cmp $15568, %rbp
lea addresses_WC_ht+0xc3a0, %rsi
lea addresses_A_ht+0x38a0, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r14, %r14
mov $13, %rcx
rep movsw
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x50a0, %rdx
nop
nop
nop
nop
inc %rax
mov (%rdx), %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'00': 1}
00
*/
