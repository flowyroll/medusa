.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4068, %rbx
nop
nop
nop
inc %r13
movw $0x6162, (%rbx)
nop
nop
nop
sub $17271, %r9
lea addresses_A_ht+0x1aaf3, %rdi
nop
nop
nop
nop
xor %r8, %r8
movb (%rdi), %r11b
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0xab36, %rcx
nop
nop
nop
nop
nop
and $500, %rdi
mov (%rcx), %rbx
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0xcf36, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
cmp $25543, %r13
lea addresses_D_ht+0xb436, %rsi
lea addresses_WC_ht+0x8716, %rdi
inc %r11
mov $42, %rcx
rep movsq
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x15876, %r11
nop
sub $45015, %rcx
movw $0x6162, (%r11)
nop
nop
inc %rsi
lea addresses_WT_ht+0xb6b6, %r8
clflush (%r8)
sub $10310, %r9
movb $0x61, (%r8)
cmp %r9, %r9
lea addresses_WT_ht+0x16436, %rcx
nop
nop
nop
mfence
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
dec %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x1f09240000000816, %rdi
dec %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
dec %r12

// REPMOV
lea addresses_WT+0x1aa36, %rsi
lea addresses_RW+0xca36, %rdi
cmp %r14, %r14
mov $31, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r9

// Faulty Load
mov $0x4ce54c0000000236, %r12
nop
nop
nop
nop
nop
cmp $17503, %rsi
mov (%r12), %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
