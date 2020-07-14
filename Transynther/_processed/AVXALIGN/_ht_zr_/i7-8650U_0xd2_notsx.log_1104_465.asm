.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xd2f, %r15
nop
nop
nop
nop
nop
and $31630, %r11
movl $0x61626364, (%r15)
nop
nop
sub %r15, %r15
lea addresses_D_ht+0xe9ff, %r11
nop
nop
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x1c92f, %rdi
nop
nop
xor $27677, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%rdi)
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xc12f, %rsi
lea addresses_WT_ht+0x212f, %rdi
clflush (%rsi)
nop
sub %rbx, %rbx
mov $43, %rcx
rep movsq
cmp %r13, %r13
lea addresses_D_ht+0x6a45, %rsi
lea addresses_D_ht+0x1d52f, %rdi
nop
nop
sub $6443, %r12
mov $122, %rcx
rep movsb
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x502f, %rsi
cmp $17617, %r11
movb (%rsi), %r12b
add $55132, %rbx
lea addresses_WT_ht+0x1a329, %rsi
lea addresses_A_ht+0xa7c3, %rdi
nop
nop
dec %r11
mov $69, %rcx
rep movsb
nop
sub $54526, %r12
lea addresses_normal_ht+0x1bb2f, %rsi
lea addresses_UC_ht+0x1d1ef, %rdi
clflush (%rdi)
nop
sub $9718, %rbx
mov $80, %rcx
rep movsb
nop
nop
and $22829, %rcx
lea addresses_UC_ht+0xe393, %rsi
dec %r15
movl $0x61626364, (%rsi)
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x1b50f, %rsi
lea addresses_WC_ht+0x12a19, %rdi
clflush (%rdi)
nop
nop
nop
and $44753, %r11
mov $97, %rcx
rep movsw
nop
nop
nop
nop
cmp $6018, %rsi
lea addresses_WT_ht+0x39e7, %rsi
lea addresses_D_ht+0x1152f, %rdi
clflush (%rdi)
nop
and %rbx, %rbx
mov $113, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $17505, %r15
lea addresses_D_ht+0x115ff, %rsi
nop
nop
nop
nop
sub %r13, %r13
mov (%rsi), %ebx
nop
xor $19900, %rcx
lea addresses_WC_ht+0x1a2f, %rcx
nop
nop
nop
nop
nop
dec %r13
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
nop
mfence
lea addresses_UC_ht+0x176af, %r11
and $695, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
add $7730, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_PSE+0x1d5cf, %r11
nop
nop
nop
cmp %r14, %r14
movl $0x51525354, (%r11)
cmp %rax, %rax

// Store
lea addresses_WT+0x18b19, %rcx
nop
nop
nop
and $51038, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_RW+0x842f, %rcx
nop
sub $18821, %r11
movb $0x51, (%rcx)
nop
xor %rbp, %rbp

// Load
lea addresses_A+0x1173f, %rbx
nop
sub %rax, %rax
mov (%rbx), %r11
nop
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_UC+0x1912f, %r14
nop
nop
nop
nop
nop
cmp %rbp, %rbp
vmovaps (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'44': 821, '00': 205, '49': 39, '48': 33, '46': 6}
44 44 00 00 00 44 00 44 44 00 44 44 49 44 00 44 44 49 44 00 00 48 44 44 44 49 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 48 44 44 44 44 44 44 44 44 46 44 48 44 48 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 00 44 44 44 44 00 44 00 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 00 44 44 44 00 44 44 44 44 44 00 00 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 48 44 00 49 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 49 44 49 44 44 44 44 48 44 44 44 44 00 00 44 00 00 44 44 44 44 00 44 44 44 00 00 49 44 44 44 44 44 00 44 44 44 44 44 49 00 44 49 44 00 00 44 00 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 48 44 44 44 44 00 00 44 44 44 48 44 44 44 44 44 44 44 00 00 00 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 00 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 49 44 00 44 44 00 44 44 44 44 44 00 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 49 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 44 00 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 00 44 48 44 44 44 44 44 00 44 00 44 00 44 44 00 44 44 44 49 44 00 44 46 49 44 44 44 00 44 44 44 49 44 44 44 44 00 44 44 44 44 44 49 48 44 44 44 00 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 49 44 44 00 44 00 44 44 44 44 44 44 00 44 44 44 00 49 00 44 44 00 44 48 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 49 44 00 44 44 00 00 44 44 44 44 44 00 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 00 00 00 00 00 44 44 44 44 00 44 00 44 00 44 00 00 00 44 00 49 46 49 44 44 00 00 44 00 44 44 44 00 00 44 48 44 44 44 44 00 00 00 00 00 44 44 44 44 44 44 44 00 44 44 44 00 44 00 44 44 44 44 49 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 49 44 44 44 44 48 46 44 00 44 00 44 44 00 44 44 44 44 44 00 49 00 00 44 44 44 44 44 44 00 44 49 00 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 48 00 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 00 44 44 44 44 49 44 44 44 44 00 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 48 44 48 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 49 44 44 00 00 44 44 44 44 00 00 48 44 44 00 48 44 00 00 44 44 00 44 00 00 44 48 49 44 44 44 44 44 44 44 48 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 49 44 00 44 44 48 44 44 00 00 00 00 00 00 00 46 00 00 49 44 49 49 44 44 44 44 44 44 44 44 44 44 44 00 49 44 00 44 44 44 44 44 44 44 44 44 44 49 44 44 44 49 44 44 44 44 00
*/
