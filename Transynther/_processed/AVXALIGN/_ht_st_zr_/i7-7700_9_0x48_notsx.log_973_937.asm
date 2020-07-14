.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x78ed, %rsi
lea addresses_UC_ht+0x1c4ed, %rdi
and %r9, %r9
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $39688, %r11
lea addresses_WT_ht+0x93ad, %rbp
nop
dec %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0xefed, %rbp
nop
inc %r14
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rsi

// Store
lea addresses_RW+0x14b81, %r8
add %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r8)
inc %r14

// Store
mov $0x5608d80000000105, %r14
nop
nop
nop
nop
sub %r12, %r12
movb $0x51, (%r14)
and $17948, %r14

// Store
lea addresses_WT+0x9eed, %rbp
nop
nop
nop
nop
nop
add $47464, %rsi
movl $0x51525354, (%rbp)
sub $2125, %rbp

// Store
lea addresses_D+0x13fed, %rbp
nop
nop
nop
nop
nop
cmp $27145, %r15
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
cmp $21978, %rbp

// Store
lea addresses_WC+0x75f5, %rax
nop
nop
nop
add $51902, %r15
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
mov $0x5704bd0000000b6d, %rsi
nop
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%rsi)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_RW+0x49ed, %rbp
nop
cmp $60871, %rax
movw $0x5152, (%rbp)
nop
sub $36159, %rbp

// Store
lea addresses_D+0x13fed, %r12
nop
cmp %rax, %rax
movw $0x5152, (%r12)
nop
nop
cmp $58786, %r8

// Store
lea addresses_D+0x1446d, %rsi
add %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
xor $61404, %rax

// Store
lea addresses_WT+0x8272, %r14
nop
nop
nop
nop
nop
add $59364, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%r14)
nop
and %rax, %rax

// Load
lea addresses_WT+0x2fed, %rsi
add $62719, %r12
mov (%rsi), %r14w
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_D+0x13fed, %r8
nop
nop
and $61893, %rax
vmovaps (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'45': 414, '3b': 1, '00': 558}
00 00 45 45 00 45 45 00 00 00 00 45 45 45 45 00 45 00 45 00 45 00 00 45 00 00 00 45 45 45 45 00 00 45 45 00 00 00 00 00 45 45 45 00 00 00 45 00 00 00 45 45 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 45 45 45 00 00 45 00 00 45 45 45 00 00 45 45 45 00 00 45 00 00 45 00 45 45 45 45 45 00 45 45 00 45 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 45 45 00 45 45 00 00 45 45 45 45 00 45 45 45 45 45 00 00 00 45 45 00 00 00 45 45 00 00 45 00 45 45 45 45 00 45 45 00 00 00 45 00 00 00 00 45 00 45 00 00 00 45 00 00 00 00 00 45 00 45 45 45 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 45 00 45 45 00 00 00 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 00 00 00 45 00 45 45 45 00 45 45 00 00 00 45 00 00 45 45 45 00 45 00 45 45 00 00 45 45 45 00 45 00 00 00 45 00 00 00 00 00 45 45 00 00 45 00 45 00 45 45 45 00 45 00 00 00 45 45 45 45 00 45 45 45 00 00 00 00 45 00 45 00 00 00 00 00 45 00 00 45 00 00 45 00 00 45 00 00 00 45 00 00 45 45 45 00 00 00 45 00 45 00 00 45 00 00 45 00 00 45 45 00 45 00 45 00 00 00 00 00 45 45 00 45 00 00 00 00 00 00 00 45 45 45 00 00 00 00 45 45 45 00 45 00 45 00 45 00 00 00 45 45 00 45 00 00 00 00 45 45 00 45 45 45 00 45 45 00 45 00 00 00 00 00 45 45 00 00 00 45 00 00 45 00 00 00 00 45 45 45 45 45 00 00 00 00 00 00 00 45 45 00 00 45 45 00 45 00 45 45 00 45 00 00 45 00 00 00 00 45 45 00 00 00 45 00 00 45 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 45 00 45 45 00 45 45 00 45 00 00 00 45 00 45 00 45 45 00 45 00 45 00 00 45 00 45 00 00 00 00 45 45 00 00 00 45 00 45 45 00 00 00 45 45 00 00 45 45 45 45 00 00 00 00 45 45 45 45 00 00 00 45 00 45 45 00 00 00 45 45 00 00 00 00 45 00 00 45 45 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 45 45 00 00 45 00 45 00 45 45 45 45 00 45 00 45 00 45 45 45 00 00 00 45 45 45 00 00 45 45 00 45 45 00 45 00 45 45 00 00 00 00 00 00 00 45 00 45 00 00 45 45 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 45 45 00 45 45 45 00 45 00 00 45 00 45 45 45 45 45 00 45 00 00 45 45 45 45 00 45 45 45 45 00 45 45 00 00 00 00 00 00 00 00 45 00 45 00 00 45 00 45 45 00 00 00 00 45 45 45 00 45 00 00 45 00 00 45 45 00 45 00 45 45 00 00 00 45 45 45 45 00 00 00 00 45 00 00 45 00 45 45 00 00 45 00 00 00 00 45 45 45 00 00 45 45 00 00 00 45 00 00 00 00 00 45 45 00 00 3b 00 00 45 00 45 00 00 00 00 00 00 00 00 45 45 00 45 45 45 00 00 45 00 00 00 00 00 45 45 00 00 45 00 00 45 00 45 45 00 45 00 45 00 00 45 45 00 00 45 00 00 00 00 00 00 45 45 45 45 45 00 00 00 00 45 00 45 00 45 45 45 00 45 00 45 45 00 00 45 00 00 45 45 00 45 00 45 45 45 00 45 00 00 00 45 45 45 45 00 45 00 00 00 45 00 00 45 00 45 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 45 00 45 45 00 00 00 45 45 45 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 45 45 00 00 00 45 00 45 00 45 00 45 00 00 00 00 45 45 45 45 00 00 00 00 00 00 45 00 00 00 45 00 45 45 00 00 45 00 45 00 00 00 00 00 45 00 00 45 00 00 00 45 00 45 45 00
*/
