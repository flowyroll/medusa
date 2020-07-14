.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xbd11, %rsi
lea addresses_WT_ht+0x598, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $67, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0x11c50, %rsi
lea addresses_D_ht+0x13b78, %rdi
nop
xor %rbx, %rbx
mov $108, %rcx
rep movsl
and %rbx, %rbx
lea addresses_WC_ht+0x19adc, %r13
nop
nop
nop
nop
cmp %r9, %r9
movl $0x61626364, (%r13)
cmp %rdi, %rdi
lea addresses_D_ht+0xbc50, %rbx
add %r13, %r13
movw $0x6162, (%rbx)
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x2d50, %rcx
clflush (%rcx)
sub $40348, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %rcx
movntdq %xmm6, (%rcx)
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x183d0, %rsi
lea addresses_D_ht+0x1e7ec, %rdi
nop
nop
nop
inc %r8
mov $4, %rcx
rep movsq
xor %rbx, %rbx
lea addresses_WC_ht+0x125a6, %rdi
nop
nop
nop
xor $16496, %r14
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
nop
nop
nop
add $15078, %rbx
lea addresses_normal_ht+0x103d0, %rsi
lea addresses_UC_ht+0x76c8, %rdi
clflush (%rsi)
nop
cmp $40927, %r13
mov $40, %rcx
rep movsq
nop
and $41891, %rbx
lea addresses_D_ht+0x7070, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp %r9, %r9
mov (%rcx), %si
nop
add %rcx, %rcx
lea addresses_A_ht+0x9090, %r8
clflush (%r8)
nop
nop
sub $10015, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r8)
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rdi
push %rsi

// Store
lea addresses_D+0x14bd0, %r12
nop
sub $16475, %rsi
movb $0x51, (%r12)
dec %r12

// Store
lea addresses_PSE+0x1a3d0, %r15
nop
dec %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
cmp %r12, %r12

// Store
lea addresses_WC+0x53a0, %r12
nop
nop
nop
nop
cmp $59067, %rax
movb $0x51, (%r12)
inc %r11

// Store
lea addresses_RW+0x3bd0, %r14
nop
nop
cmp $42426, %r15
movl $0x51525354, (%r14)
nop
and %r12, %r12

// Store
lea addresses_D+0x14bd0, %r14
clflush (%r14)
nop
nop
nop
nop
nop
xor $20720, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0xa3d0, %r14
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
add $45137, %r11

// Store
lea addresses_A+0x18090, %r14
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
cmp %rsi, %rsi

// Store
lea addresses_WT+0x14fd0, %rsi
nop
nop
inc %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rsi)
nop
sub %r15, %r15

// Store
lea addresses_WC+0x9f10, %r12
sub %r14, %r14
movw $0x5152, (%r12)

// Exception!!!
mov (0), %r11
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_D+0x14bd0, %rdi
nop
nop
nop
nop
nop
xor $65182, %r11
movb (%rdi), %r12b
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
