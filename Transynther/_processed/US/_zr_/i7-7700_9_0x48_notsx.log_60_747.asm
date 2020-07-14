.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d7f7, %rsi
lea addresses_D_ht+0x14cf7, %rdi
clflush (%rsi)
nop
nop
nop
cmp $36293, %r15
mov $36, %rcx
rep movsl
nop
nop
and $60628, %r12
lea addresses_WT_ht+0x5cb7, %rsi
lea addresses_D_ht+0x101f7, %rdi
nop
dec %r9
mov $70, %rcx
rep movsq
nop
nop
cmp $11970, %r12
lea addresses_D_ht+0x11b67, %r9
clflush (%r9)
nop
and $64071, %rdx
mov (%r9), %esi
nop
nop
nop
nop
nop
cmp $2015, %r12
lea addresses_normal_ht+0x11fff, %rdi
nop
nop
nop
nop
xor %r12, %r12
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
inc %r9
lea addresses_D_ht+0x161f7, %rcx
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0xb977, %r9
nop
nop
nop
nop
nop
dec %rsi
movw $0x6162, (%r9)
nop
nop
sub $21144, %rcx
lea addresses_A_ht+0x1aef7, %rdi
sub $5066, %r9
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
nop
nop
xor $26658, %rcx
lea addresses_A_ht+0x744f, %r12
nop
nop
nop
and %rdx, %rdx
mov (%r12), %r9d
nop
nop
and $58405, %r15
lea addresses_WT_ht+0x1cbf, %rdx
nop
xor $53512, %r12
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0xab77, %r9
dec %rsi
movups (%r9), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx

// Store
lea addresses_normal+0xb8f7, %r10
nop
nop
and $9438, %r12
movb $0x51, (%r10)
nop
inc %r10

// Faulty Load
lea addresses_US+0x6ef7, %r10
nop
nop
nop
nop
nop
sub $19768, %r14
mov (%r10), %rax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 7}}
{'00': 60}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
