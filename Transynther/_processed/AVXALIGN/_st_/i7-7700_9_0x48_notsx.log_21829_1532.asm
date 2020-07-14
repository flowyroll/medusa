.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17f11, %r9
nop
xor $44055, %r10
mov (%r9), %r13w
nop
cmp $52041, %r11
lea addresses_A_ht+0x156cd, %rcx
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x15d4d, %rdi
and %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rdi)
dec %r14
lea addresses_WC_ht+0x61cd, %r9
nop
nop
nop
nop
and $45754, %r13
movw $0x6162, (%r9)
nop
nop
nop
cmp $40100, %r9
lea addresses_UC_ht+0x1c7cd, %rsi
lea addresses_WT_ht+0x141cd, %rdi
nop
nop
nop
and $24231, %r10
mov $124, %rcx
rep movsq
cmp %r11, %r11
lea addresses_UC_ht+0x1a8cd, %r13
nop
nop
nop
and $14525, %r10
movb (%r13), %r9b
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x8ccd, %rsi
nop
nop
nop
nop
nop
inc %rcx
mov (%rsi), %r10w
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_A_ht+0x6acd, %rsi
lea addresses_WC_ht+0x139cd, %rdi
clflush (%rdi)
nop
nop
nop
sub %r10, %r10
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x1878d, %rsi
lea addresses_UC_ht+0x1a1cd, %rdi
nop
add %r11, %r11
mov $66, %rcx
rep movsq
nop
add $10611, %r14
lea addresses_WC_ht+0xaad, %rdi
nop
nop
sub $13118, %r11
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x1c3cd, %r13
nop
nop
nop
nop
nop
sub %r14, %r14
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x16485, %rcx
nop
add $358, %r11
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0x11ecd, %rsi
lea addresses_WT_ht+0xceb, %rdi
nop
nop
nop
nop
nop
add $13817, %r14
mov $92, %rcx
rep movsq
dec %r11
lea addresses_WC_ht+0x99db, %rsi
lea addresses_UC_ht+0xf30d, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $14, %rcx
rep movsq
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rdi

// Load
lea addresses_UC+0x518d, %r13
and $60998, %rax
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
add %r10, %r10

// Store
mov $0x7a3a240000000aa5, %r10
nop
xor $44514, %rdi
movl $0x51525354, (%r10)
and $47003, %rdi

// Faulty Load
lea addresses_normal+0x111cd, %rdi
sub %r9, %r9
mov (%rdi), %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
