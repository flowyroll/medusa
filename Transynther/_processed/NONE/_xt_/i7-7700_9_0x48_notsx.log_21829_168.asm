.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11056, %r9
nop
nop
nop
nop
cmp $57474, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x699a, %r15
nop
sub $63743, %r8
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r15)
nop
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0xaf6, %r15
nop
nop
nop
nop
nop
and $14615, %rbp
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x11055, %rsi
lea addresses_UC_ht+0x19e9e, %rdi
nop
sub %r15, %r15
mov $43, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $24141, %r10
lea addresses_normal_ht+0x6c0c, %rcx
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x15d42, %r8
nop
nop
nop
xor %rbp, %rbp
movups (%r8), %xmm0
vpextrq $0, %xmm0, %r9
xor %r9, %r9
lea addresses_WC_ht+0x15306, %rsi
lea addresses_A_ht+0x8756, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r8, %r8
mov $83, %rcx
rep movsw
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x19222, %r9
nop
nop
and $43112, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
nop
dec %rbx
lea addresses_A_ht+0xf616, %rcx
clflush (%rcx)
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
add $17921, %rbp
lea addresses_normal_ht+0x8bf6, %rcx
nop
nop
nop
sub $41577, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
sub $28477, %rsi
lea addresses_A_ht+0xb056, %r9
nop
nop
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1e756, %rdi
nop
mfence
movl $0x61626364, (%rdi)
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x1c556, %rdi
nop
inc %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_D+0x16056, %r12
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
inc %r13

// REPMOV
lea addresses_D+0x8e96, %rsi
lea addresses_WC+0x125ce, %rdi
nop
nop
nop
add $27477, %r13
mov $34, %rcx
rep movsw
nop
dec %rcx

// Store
lea addresses_UC+0x18456, %r11
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r11)
nop
and $41101, %rdi

// Store
lea addresses_WT+0xb256, %rbx
nop
nop
sub $35852, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
inc %r12

// Store
lea addresses_UC+0x14b56, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_A+0x121d6, %rbp
clflush (%rbp)
and %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
nop
add $42867, %r12

// Faulty Load
lea addresses_RW+0x1c456, %rbp
add %rsi, %rsi
mov (%rbp), %r11w
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
