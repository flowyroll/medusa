.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c37b, %rsi
lea addresses_D_ht+0x9503, %rdi
nop
dec %rax
mov $98, %rcx
rep movsl
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x7303, %r9
nop
sub %r14, %r14
mov (%r9), %rax
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x3593, %rsi
lea addresses_A_ht+0xc4c3, %rdi
nop
nop
nop
cmp $44914, %r14
mov $92, %rcx
rep movsl
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xa243, %rdi
nop
nop
nop
dec %r11
mov (%rdi), %r14d
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x18b15, %rsi
add %rax, %rax
mov (%rsi), %r14w
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0xec0f, %rsi
lea addresses_D_ht+0x1c0a3, %rdi
clflush (%rdi)
nop
xor $50759, %r10
mov $103, %rcx
rep movsl
nop
nop
nop
sub $14272, %rcx
lea addresses_normal_ht+0x3043, %rsi
lea addresses_A_ht+0x1303, %rdi
clflush (%rsi)
nop
nop
sub %rax, %rax
mov $7, %rcx
rep movsq
nop
nop
nop
cmp $41918, %rax
lea addresses_A_ht+0x1abab, %rdi
nop
nop
nop
nop
nop
sub $27519, %r10
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
nop
nop
cmp $18438, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xee5f, %r10
nop
nop
nop
nop
nop
sub $26566, %r11
movw $0x5152, (%r10)
nop
nop
and $19539, %r11

// REPMOV
lea addresses_UC+0x190c3, %rsi
lea addresses_A+0x1d495, %rdi
nop
nop
cmp $57459, %rbp
mov $86, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r9, %r9

// REPMOV
lea addresses_RW+0x2077, %rsi
lea addresses_normal+0xb703, %rdi
nop
nop
nop
nop
nop
and $18955, %rbp
mov $27, %rcx
rep movsb
nop
dec %r9

// Store
lea addresses_WT+0x1bd03, %rdi
nop
nop
add %rcx, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_WC+0x18b03, %r11
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%r11)
sub %r9, %r9

// Store
lea addresses_UC+0x11303, %rsi
nop
nop
nop
nop
sub $59947, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
sub $17363, %rcx

// Load
lea addresses_WT+0x17543, %rsi
nop
nop
nop
nop
nop
and %r10, %r10
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
add $64385, %rdi

// REPMOV
lea addresses_A+0x37c3, %rsi
lea addresses_WC+0x18b03, %rdi
nop
nop
nop
add $64054, %r10
mov $57, %rcx
rep movsl
nop
sub %rcx, %rcx

// Load
lea addresses_RW+0x1aaf1, %rcx
nop
nop
add $22399, %r11
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
and %rax, %rax

// Load
lea addresses_WC+0x18b03, %r9
nop
nop
nop
nop
nop
sub $6833, %rcx
mov (%r9), %rsi
cmp %r10, %r10

// Store
lea addresses_WC+0x18b03, %rsi
nop
nop
xor %r9, %r9
movw $0x5152, (%rsi)
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_WC+0x18b03, %r11
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r11), %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 6}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
