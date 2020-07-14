.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9490, %r9
nop
nop
nop
nop
dec %rdx
mov (%r9), %r14d
nop
nop
nop
nop
nop
and $63349, %rbx
lea addresses_normal_ht+0x365c, %rbx
nop
nop
cmp $13872, %rcx
movb (%rbx), %r14b
nop
nop
nop
nop
and $16396, %rdx
lea addresses_WC_ht+0x18c86, %rdx
nop
nop
dec %r11
mov (%rdx), %r9d
nop
inc %rbx
lea addresses_WC_ht+0xb45c, %rsi
lea addresses_WT_ht+0xc8ec, %rdi
nop
nop
nop
xor $23194, %r9
mov $22, %rcx
rep movsl
nop
and %r9, %r9
lea addresses_A_ht+0x10dc, %r9
nop
nop
nop
nop
inc %rbx
movw $0x6162, (%r9)
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x3d5c, %r14
nop
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%r14)
cmp %r9, %r9
lea addresses_UC_ht+0x4e74, %r14
nop
nop
cmp $53529, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r14)
nop
nop
dec %rcx
lea addresses_UC_ht+0xe45c, %rbx
dec %rcx
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x1465c, %rdx
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%rdx)
nop
nop
nop
xor $6392, %rdi
lea addresses_A_ht+0x3724, %r9
nop
xor %rdi, %rdi
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
sub $6096, %r11
lea addresses_D_ht+0x13df4, %rsi
lea addresses_UC_ht+0x12fd9, %rdi
nop
inc %r9
mov $55, %rcx
rep movsl
nop
nop
and $9643, %rdi
lea addresses_WT_ht+0xce0a, %rcx
nop
nop
dec %rdi
movb $0x61, (%rcx)
xor $26166, %r11
lea addresses_WC_ht+0x101b4, %rdi
clflush (%rdi)
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x33dc, %rsi
lea addresses_A_ht+0x16af8, %rdi
nop
nop
nop
nop
nop
cmp $25169, %rdx
mov $100, %rcx
rep movsw
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_UC+0xa9dc, %rbx
nop
nop
nop
sub $58982, %r12
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x1cc5c, %rdi
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
xor %r12, %r12

// Load
lea addresses_PSE+0xd5c, %rbx
clflush (%rbx)
nop
dec %rdi
mov (%rbx), %r12w
nop
nop
nop
nop
nop
add %r9, %r9

// Store
mov $0x25c, %r9
nop
inc %r8
movl $0x51525354, (%r9)
sub $14589, %r9

// Store
lea addresses_D+0x3efc, %r12
nop
nop
dec %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movaps %xmm7, (%r12)
nop
and $64352, %r9

// Load
lea addresses_RW+0x345c, %r8
nop
nop
add $21602, %r12
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
nop
xor $37396, %rdi

// Store
lea addresses_UC+0x1f6b0, %rbx
nop
nop
sub $64247, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
inc %r12

// Store
lea addresses_US+0xb230, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
dec %r14

// Load
lea addresses_D+0x1145c, %rbx
nop
sub %r12, %r12
mov (%rbx), %r9w
and %r9, %r9

// Store
lea addresses_WT+0x1d8bc, %rdi
nop
nop
nop
nop
nop
dec %r8
movb $0x51, (%rdi)
add %r8, %r8

// Store
lea addresses_RW+0x1a4bc, %r11
nop
nop
nop
nop
nop
and $26499, %r14
movw $0x5152, (%r11)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_US+0xacfc, %r14
nop
nop
nop
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r14)
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_PSE+0x24d0, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rdi)
inc %r11

// Faulty Load
lea addresses_RW+0x345c, %rbx
nop
nop
nop
nop
nop
sub $38611, %r9
movb (%rbx), %r8b
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
