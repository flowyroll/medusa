.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7be3, %r8
clflush (%r8)
nop
nop
nop
nop
sub $56623, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r8)
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x198e3, %rbp
nop
nop
nop
and %rsi, %rsi
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
cmp $49085, %r9
lea addresses_WT_ht+0x1e3ee, %rsi
lea addresses_A_ht+0x9f41, %rdi
nop
add $21708, %r9
mov $12, %rcx
rep movsl
and %rsi, %rsi
lea addresses_A_ht+0x3b7, %r9
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%r9)
nop
nop
nop
dec %r9
lea addresses_A_ht+0xb9e3, %rcx
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rcx), %r9w
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x3ff1, %r13
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r13)
and $42323, %rsi
lea addresses_normal_ht+0x1ece3, %r9
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%r9)
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x159e3, %rsi
lea addresses_WC_ht+0xc8e3, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $45, %rcx
rep movsw
nop
nop
nop
and $10714, %rsi
lea addresses_UC_ht+0x126e3, %rsi
lea addresses_normal_ht+0x15d43, %rdi
nop
nop
nop
add $9519, %r9
mov $47, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $21843, %rdi
lea addresses_normal_ht+0x132e3, %rsi
lea addresses_WC_ht+0x14ee3, %rdi
dec %r9
mov $74, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xcb63, %r13
add %r15, %r15
movb $0x51, (%r13)
nop
nop
nop
nop
nop
sub %r14, %r14

// REPMOV
lea addresses_UC+0xc0e3, %rsi
lea addresses_WC+0x198e3, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $21, %rcx
rep movsw
nop
nop
cmp %rdi, %rdi

// REPMOV
lea addresses_WT+0xf0e3, %rsi
lea addresses_WT+0x11663, %rdi
clflush (%rsi)
nop
nop
nop
inc %r15
mov $43, %rcx
rep movsb
sub %r14, %r14

// Load
lea addresses_UC+0x1dbfd, %rcx
sub $56764, %r11
mov (%rcx), %r15w
nop
nop
sub %rcx, %rcx

// Store
lea addresses_RW+0x1f9cb, %rcx
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
nop
sub $36033, %r15

// Faulty Load
lea addresses_WT+0xf0e3, %r13
dec %rsi
mov (%r13), %r14w
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
