.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18263, %r10
cmp $59530, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x4cf, %rsi
nop
nop
nop
nop
nop
add $32727, %r10
movb $0x61, (%rsi)
nop
nop
nop
xor $37495, %rbp
lea addresses_WT_ht+0x1639f, %rbx
nop
inc %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rbx)
cmp %rbx, %rbx
lea addresses_A_ht+0xd9af, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %rbx
movaps %xmm2, (%rbx)
nop
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0xb02f, %rsi
lea addresses_UC_ht+0x12b6f, %rdi
dec %r10
mov $24, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x17eaf, %rcx
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rcx)
xor %rsi, %rsi
lea addresses_normal_ht+0x1d1af, %rsi
lea addresses_WT_ht+0x74df, %rdi
sub %r11, %r11
mov $30, %rcx
rep movsb
nop
nop
inc %rcx
lea addresses_A_ht+0x1c971, %rdi
nop
nop
nop
nop
nop
inc %r9
movl $0x61626364, (%rdi)
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x942f, %rsi
lea addresses_UC_ht+0xe1, %rdi
nop
dec %rbx
mov $52, %rcx
rep movsl
nop
nop
nop
nop
sub $36954, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0xb02f, %rsi
lea addresses_normal+0x902f, %rdi
nop
nop
and %r13, %r13
mov $23, %rcx
rep movsb
xor $12717, %r13

// Store
lea addresses_RW+0x1482f, %rsi
sub $38513, %r14
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
nop
add $60158, %r14

// Store
lea addresses_UC+0x9aaf, %rcx
nop
sub %r15, %r15
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
sub $7749, %rcx

// Store
mov $0x62f, %rdi
nop
nop
inc %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovntdq %ymm5, (%rdi)
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_A+0x42f, %rcx
nop
nop
sub $58584, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
cmp $37513, %r14

// Store
mov $0x4f, %r11
add %rcx, %rcx
movb $0x51, (%r11)
nop
nop
and $54443, %rsi

// Store
mov $0x6f, %r15
sub $56203, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%r15)
nop
nop
inc %rsi

// Faulty Load
lea addresses_RW+0x1482f, %r11
nop
nop
nop
nop
nop
sub $18650, %r14
mov (%r11), %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
