.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x876f, %rsi
lea addresses_UC_ht+0x167, %rdi
nop
nop
nop
nop
nop
cmp $32597, %rdx
mov $38, %rcx
rep movsb
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x6d6f, %r9
nop
cmp $58665, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
nop
cmp $21388, %r10
lea addresses_WC_ht+0x1016f, %r10
sub $13267, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
and $30470, %r9
lea addresses_WT_ht+0xc56f, %rsi
lea addresses_WC_ht+0x161ef, %rdi
nop
nop
nop
add $26628, %r14
mov $87, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x5b6f, %rsi
lea addresses_D_ht+0x1689f, %rdi
nop
nop
add $25316, %rbx
mov $42, %rcx
rep movsb
nop
nop
nop
nop
nop
and $39887, %rsi
lea addresses_WC_ht+0xb2df, %rdi
nop
nop
nop
nop
xor %r10, %r10
movb (%rdi), %r14b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x7b6f, %rcx
nop
nop
nop
nop
xor $29704, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rcx)
nop
lfence
lea addresses_A_ht+0x876f, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
nop
and %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %r9
push %rdx

// Store
lea addresses_WT+0x11a87, %rdx
clflush (%rdx)
nop
sub %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
sub $12564, %r15

// Store
mov $0x1b4ac20000000eef, %rdx
nop
nop
inc %r13
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
xor $26421, %r14

// Store
lea addresses_normal+0x1b18f, %r13
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
add $49863, %r9

// Store
lea addresses_normal+0x17362, %r8
nop
nop
nop
and $10740, %rdx
movw $0x5152, (%r8)
nop
xor %r9, %r9

// Store
lea addresses_normal+0x1d647, %r15
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x5152, (%r15)
nop
xor %r11, %r11

// Store
lea addresses_UC+0x636f, %r8
dec %r13
movw $0x5152, (%r8)
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_US+0x1556f, %r14
nop
nop
nop
nop
sub $57396, %r13
movb (%r14), %r15b
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'00': 1}
00
*/
