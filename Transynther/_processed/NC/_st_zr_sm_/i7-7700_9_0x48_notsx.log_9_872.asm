.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1b5c7, %rsi
lea addresses_A_ht+0x10e97, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $126, %rcx
rep movsb
nop
nop
cmp $7105, %rbp
lea addresses_WT_ht+0x1155c, %rcx
lfence
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %rsi
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0xd7a7, %rsi
mov $0x3b51b00000000647, %rdi
nop
nop
xor $48265, %rbx
mov $4, %rcx
rep movsw
nop
add $61492, %rbx

// Store
lea addresses_D+0x104c7, %r15
nop
nop
nop
nop
cmp $18928, %rax
movl $0x51525354, (%r15)
nop
nop
dec %r15

// Store
lea addresses_PSE+0xf147, %rdi
clflush (%rdi)
nop
nop
nop
inc %rsi
movb $0x51, (%rdi)
nop
nop
nop
add %rdi, %rdi

// Store
mov $0x19d61c0000000b87, %rdi
nop
nop
nop
nop
nop
inc %rsi
movb $0x51, (%rdi)
nop
xor $39071, %rsi

// Store
lea addresses_RW+0x167a7, %r15
xor $46948, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%r15)
nop
dec %r15

// Store
mov $0x18084a0000000247, %r15
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovaps %ymm1, (%r15)
nop
nop
nop
cmp $14413, %r15

// Faulty Load
mov $0x18084a0000000247, %r15
nop
nop
nop
nop
xor $11000, %rcx
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_NC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'58': 8, '00': 1}
00 58 58 58 58 58 58 58 58
*/
