.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x19f6a, %r11
nop
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%r11)
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x76ee, %rcx
nop
xor $36533, %rdx
movw $0x6162, (%rcx)
nop
nop
cmp $21734, %rcx
lea addresses_UC_ht+0x1777e, %rdx
xor $50990, %rsi
mov (%rdx), %cx
sub %r9, %r9
lea addresses_A_ht+0x17e02, %r13
nop
sub %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, (%r13)
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x7000, %r14
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb (%r14), %r9b
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x100ce, %rsi
lea addresses_normal_ht+0xfeee, %rdi
nop
nop
nop
lfence
mov $17, %rcx
rep movsw
nop
lfence
lea addresses_WT_ht+0x36e6, %r11
inc %rsi
mov (%r11), %r13
and %r13, %r13
lea addresses_normal_ht+0x816e, %r11
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r11)
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1a3ee, %rcx
and $26392, %r11
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
dec %r9
lea addresses_UC_ht+0xbb48, %rsi
lea addresses_UC_ht+0x86ee, %rdi
nop
nop
nop
cmp $2914, %r9
mov $57, %rcx
rep movsl
nop
cmp %rdx, %rdx
lea addresses_A_ht+0xa77e, %rsi
nop
add %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
xor $6565, %r11
lea addresses_WT_ht+0x13ee, %rsi
lea addresses_normal_ht+0x13eee, %rdi
nop
xor $57161, %rdx
mov $63, %rcx
rep movsq
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x5aee, %rsi
lea addresses_normal_ht+0x18bee, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $20, %rcx
rep movsl
nop
dec %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Store
mov $0xfee, %rcx
cmp $27385, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
sub $47522, %r8

// Faulty Load
lea addresses_UC+0xfeee, %r13
nop
nop
nop
nop
nop
and %rdi, %rdi
vmovaps (%r13), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'08': 3, '4a': 1, '45': 526, '00': 19065, '40': 3, '49': 2228, '6c': 1, 'ff': 2}
00 6c 49 00 00 00 00 00 45 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 49 00 45 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 45 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 49 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 45 45 45 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 45 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 49 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 00 00 00 49 00 00 45 00 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 49 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 45 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 49 49 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 49 45 00 00 00 00 49 00 00 49 49 49 49 49
*/
