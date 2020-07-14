.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1147f, %r9
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x627f, %rsi
lea addresses_WT_ht+0x1392f, %rdi
nop
sub %r11, %r11
mov $118, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xb07f, %r15
nop
nop
nop
add $45535, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r15)
and %r11, %r11
lea addresses_D_ht+0xe17f, %rsi
lea addresses_normal_ht+0x707f, %rdi
clflush (%rsi)
nop
nop
inc %r10
mov $80, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $12646, %r15
lea addresses_normal_ht+0xb27f, %r15
nop
nop
nop
add $27146, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r15)
and $5637, %r8
lea addresses_normal_ht+0x1007f, %rcx
nop
nop
nop
add $47277, %r8
movb (%rcx), %r15b
nop
nop
sub $65506, %r15
lea addresses_D_ht+0x8c7f, %r15
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r15)
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rdx

// Load
lea addresses_UC+0xa1ff, %rax
nop
nop
nop
nop
nop
add %r9, %r9
movups (%rax), %xmm6
vpextrq $1, %xmm6, %rdx
inc %rdx

// Store
lea addresses_WT+0x228f, %rbp
nop
xor $33892, %r10
movl $0x51525354, (%rbp)
nop
sub $40848, %rbp

// Store
mov $0x4401500000008a1, %r13
clflush (%r13)
add %r9, %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovaps %ymm5, (%r13)
nop
nop
nop
and $26127, %r12

// Store
lea addresses_WC+0x1547f, %rax
nop
xor %rbp, %rbp
movl $0x51525354, (%rax)
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_normal+0x13c7f, %r10
add $20016, %rax
mov (%r10), %dx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'34': 57}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
