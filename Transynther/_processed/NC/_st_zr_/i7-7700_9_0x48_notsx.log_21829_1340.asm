.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xad12, %r8
nop
sub $61228, %r10
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x5e2, %r10
nop
add $42419, %r13
mov (%r10), %r9w
nop
nop
nop
nop
xor $32552, %r13
lea addresses_UC_ht+0x8092, %rsi
lea addresses_UC_ht+0x10c10, %rdi
nop
nop
nop
nop
nop
xor $39425, %r8
mov $15, %rcx
rep movsq
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x113ca, %rsi
lea addresses_UC_ht+0xe172, %rdi
and $52281, %r13
mov $23, %rcx
rep movsq
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x1cb18, %rsi
clflush (%rsi)
xor $26715, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm4
and $0xffffffffffffffc0, %rsi
movaps %xmm4, (%rsi)
nop
add %rdi, %rdi
lea addresses_WC_ht+0x4292, %r11
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r11)
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x19092, %rsi
lea addresses_UC_ht+0x70d6, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r12, %r12
mov $43, %rcx
rep movsl
nop
nop
nop
nop
xor $11675, %r11
lea addresses_D_ht+0x175da, %rcx
and %rsi, %rsi
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xd67c, %rdi
nop
nop
nop
sub $34515, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rdi
vmovaps %ymm4, (%rdi)
nop
cmp $41622, %r9
lea addresses_A_ht+0x1d12, %r12
nop
nop
nop
nop
nop
inc %r11
movb $0x61, (%r12)
nop
sub %r12, %r12
lea addresses_WC_ht+0x1da92, %rsi
lea addresses_normal_ht+0x11f92, %rdi
nop
nop
nop
nop
cmp $56522, %r12
mov $78, %rcx
rep movsb
and $36629, %rcx
lea addresses_UC_ht+0x77e6, %r9
nop
nop
nop
nop
nop
and %r13, %r13
movb $0x61, (%r9)
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x8892, %rsi
lea addresses_A_ht+0x1792, %rdi
nop
nop
nop
nop
and $65201, %r12
mov $45, %rcx
rep movsl
nop
add $33569, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1a992, %rcx
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_WT+0x18edd, %r8
nop
inc %rdi
movw $0x5152, (%r8)
nop
nop
add %r8, %r8

// REPMOV
lea addresses_UC+0x192f2, %rsi
lea addresses_WC+0x11ee4, %rdi
dec %r15
mov $23, %rcx
rep movsb
nop
nop
inc %rcx

// Store
lea addresses_normal+0x7392, %r11
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movaps %xmm3, (%r11)
nop
and %r11, %r11

// Store
lea addresses_normal+0x4792, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rdi)
nop
inc %rsi

// Store
lea addresses_RW+0x7892, %rbx
nop
sub $55304, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rbx)
nop
xor $48092, %rcx

// Store
lea addresses_normal+0x19592, %r11
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
nop
dec %r8

// Faulty Load
mov $0x1b067b0000000892, %rdx
nop
nop
nop
nop
nop
sub $47860, %r11
mov (%rdx), %si
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'58': 20568, '00': 1261}
00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00
*/
