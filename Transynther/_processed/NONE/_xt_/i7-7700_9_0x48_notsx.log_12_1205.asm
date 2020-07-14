.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4b87, %rsi
nop
nop
nop
nop
cmp %r12, %r12
mov (%rsi), %rdi
nop
and %r8, %r8
lea addresses_WT_ht+0x53a7, %rsi
lea addresses_normal_ht+0xdb87, %rdi
add $4707, %r11
mov $49, %rcx
rep movsw
nop
nop
add $34520, %rcx
lea addresses_UC_ht+0x17dcb, %r8
nop
nop
nop
nop
nop
and $43057, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %r8
vmovaps %ymm4, (%r8)
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x1c987, %rsi
lea addresses_WC_ht+0x18b87, %rdi
nop
nop
nop
inc %r14
mov $67, %rcx
rep movsl
nop
nop
nop
sub $1869, %r8
lea addresses_WC_ht+0x16cb, %rsi
lea addresses_UC_ht+0x181c7, %rdi
nop
nop
inc %r12
mov $8, %rcx
rep movsw
nop
cmp $19081, %r8
lea addresses_D_ht+0x17d07, %r8
sub $32187, %rcx
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rdi
push %rsi

// Load
lea addresses_PSE+0x7787, %rdi
nop
nop
xor %r12, %r12
movb (%rdi), %r13b
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_normal+0x8dc7, %r13
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%r13), %r14
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_WC+0x1b562, %r12
xor %rsi, %rsi
movw $0x5152, (%r12)
nop
nop
nop
nop
xor $40017, %rdi

// Store
lea addresses_WT+0x18287, %r14
and $6325, %r13
movw $0x5152, (%r14)
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_PSE+0x1d37f, %rsi
dec %rbp
movw $0x5152, (%rsi)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_D+0xff87, %rsi
clflush (%rsi)
nop
nop
and $57242, %r13
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x1ab58300000006a7, %rdi
nop
nop
nop
nop
nop
xor $20183, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)

// Exception!!!
nop
nop
nop
mov (0), %r14
nop
nop
nop
xor $16734, %rsi

// Store
mov $0xf87, %r13
xor $37847, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r13)

// Exception!!!
nop
mov (0), %rdi
nop
and %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x16787, %r14
nop
nop
nop
add $9246, %r12
mov (%r14), %r11w
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 7}}
{'33': 12}
33 33 33 33 33 33 33 33 33 33 33 33
*/
