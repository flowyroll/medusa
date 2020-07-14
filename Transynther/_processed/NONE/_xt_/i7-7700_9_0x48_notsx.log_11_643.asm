.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17515, %rsi
lea addresses_A_ht+0x15af5, %rdi
xor %r15, %r15
mov $65, %rcx
rep movsq
nop
add $12197, %rdi
lea addresses_WC_ht+0x1e7f5, %rsi
lea addresses_WT_ht+0x65f5, %rdi
nop
nop
nop
add $16124, %rbp
mov $90, %rcx
rep movsb
add %r15, %r15
lea addresses_UC_ht+0xac7a, %rcx
inc %r15
movw $0x6162, (%rcx)
nop
nop
nop
nop
add $14355, %rbp
lea addresses_UC_ht+0x5f75, %r11
nop
nop
xor $36083, %rsi
mov (%r11), %cx
nop
cmp $44848, %rcx
lea addresses_WC_ht+0x154f5, %rsi
nop
nop
nop
nop
nop
add $24644, %r9
mov (%rsi), %rdi
nop
nop
nop
and $47293, %rbp
lea addresses_WC_ht+0x2a5d, %r9
nop
nop
nop
sub $34574, %rsi
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0xd3f5, %rsi
nop
nop
nop
and %r15, %r15
movl $0x61626364, (%rsi)
nop
nop
nop
cmp $7706, %rdi
lea addresses_WT_ht+0x3cf5, %rsi
lea addresses_normal_ht+0xf56b, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $46, %rcx
rep movsq
nop
and %rcx, %rcx
lea addresses_WT_ht+0x14df5, %rcx
nop
dec %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x14a1d, %r9
dec %rcx
movb $0x61, (%r9)
and $40981, %rbp
lea addresses_WC_ht+0x75ed, %r9
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r9)
nop
nop
and $3199, %rcx
lea addresses_UC_ht+0x1abb5, %r14
nop
nop
xor %rdi, %rdi
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x1ddf5, %rsi
lea addresses_UC_ht+0x1bb17, %rdi
clflush (%rsi)
nop
nop
nop
cmp %rbp, %rbp
mov $2, %rcx
rep movsl
nop
dec %rcx
lea addresses_UC_ht+0x72f5, %rdi
inc %rcx
movw $0x6162, (%rdi)
nop
nop
nop
add $6574, %rcx
lea addresses_UC_ht+0x139f5, %rsi
lea addresses_normal_ht+0x5e2d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r14
mov $110, %rcx
rep movsb
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx

// Store
mov $0x2b6ca70000000671, %r9
nop
nop
nop
nop
sub $7936, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
cmp $10321, %rdi

// Load
lea addresses_RW+0x18f71, %rcx
nop
nop
nop
nop
and $41382, %rdx
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
nop
nop
add $58987, %r15

// Faulty Load
lea addresses_D+0x16df5, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'36': 11}
36 36 36 36 36 36 36 36 36 36 36
*/
