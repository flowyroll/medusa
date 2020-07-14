.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7edc, %r15
nop
nop
inc %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r15)
sub $36265, %r13
lea addresses_UC_ht+0x7d40, %rsi
lea addresses_normal_ht+0xa340, %rdi
nop
nop
nop
nop
nop
sub $11675, %r15
mov $62, %rcx
rep movsl
nop
cmp %r8, %r8
lea addresses_A_ht+0xf940, %rax
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x2380, %rax
clflush (%rax)
nop
and %r15, %r15
mov (%rax), %edi
nop
nop
dec %r15
lea addresses_WC_ht+0x4d40, %rsi
lea addresses_D_ht+0x7df0, %rdi
nop
xor %rbp, %rbp
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x3440, %rcx
and %r15, %r15
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x8640, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rdi), %r15
nop
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0xf140, %rsi
lea addresses_UC_ht+0x4db8, %rdi
nop
nop
nop
cmp $60175, %rax
mov $87, %rcx
rep movsb
nop
and $13276, %rax
lea addresses_normal_ht+0xac86, %rsi
lea addresses_A_ht+0x18120, %rdi
nop
nop
cmp $61716, %r13
mov $6, %rcx
rep movsb
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rcx
push %rdx

// Faulty Load
mov $0x5c9f530000000d40, %r9
nop
xor $10361, %r15
vmovaps (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'48': 4925, '4f': 3, '50': 1, '00': 648}
48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 4f 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 4f 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48
*/
