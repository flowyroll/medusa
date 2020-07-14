.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13a6e, %rdx
nop
nop
nop
nop
add $19572, %r11
movups (%rdx), %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0xd5ee, %r12
nop
nop
nop
nop
sub %rcx, %rcx
movups (%r12), %xmm2
vpextrq $0, %xmm2, %rax
inc %r12
lea addresses_WC_ht+0x446e, %rsi
lea addresses_normal_ht+0x17a6e, %rdi
sub $55157, %rdx
mov $120, %rcx
rep movsw
xor %r12, %r12
lea addresses_UC_ht+0x27e, %rsi
lea addresses_WC_ht+0xe2ae, %rdi
clflush (%rsi)
nop
add %r11, %r11
mov $45, %rcx
rep movsl
nop
nop
nop
nop
nop
and $34372, %rdx
lea addresses_WT_ht+0x1ea6e, %rax
dec %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%rax)
xor $27782, %rdx
lea addresses_normal_ht+0x17ee, %rdi
nop
xor $6569, %r12
mov (%rdi), %ecx
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0xec7e, %rdx
nop
nop
add %rbx, %rbx
movb (%rdx), %al
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0xfd0a, %rbx
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
nop
xor $57996, %rdx
lea addresses_UC_ht+0x14198, %r11
nop
nop
nop
inc %rax
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xea6e, %rsi
lea addresses_WC_ht+0x426e, %rdi
nop
nop
nop
sub $38033, %rax
mov $36, %rcx
rep movsl
nop
nop
nop
dec %rbx
lea addresses_D_ht+0xb06e, %rbx
sub %rax, %rax
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r11
add $12029, %rbx
lea addresses_WT_ht+0x1d26e, %rsi
lea addresses_A_ht+0x16922, %rdi
nop
nop
nop
inc %r12
mov $4, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x11d6c, %rax
nop
nop
add $9381, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
cmp $12159, %rcx
lea addresses_WC_ht+0xc4e, %rdx
nop
cmp %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rdx)
sub $38319, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x6b09, %rsi
lea addresses_PSE+0xda6e, %rdi
lfence
mov $13, %rcx
rep movsl
nop
inc %rsi

// Store
lea addresses_PSE+0x6c81, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovaps %ymm0, (%rdi)
sub %r11, %r11

// Store
lea addresses_normal+0x5a6e, %r11
nop
xor $6804, %rsi
movw $0x5152, (%r11)
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_US+0x31ae, %rdi
xor $50438, %r13
movl $0x51525354, (%rdi)
cmp %r11, %r11

// Faulty Load
lea addresses_US+0xb26e, %r9
nop
nop
xor %rdi, %rdi
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'00': 239, 'b6': 1, '22': 2, '0b': 3, '65': 1, '48': 7, '4c': 7, '53': 2, '0a': 2, '46': 5, '36': 139, 'e0': 10, 'cf': 1, '47': 17, 'ff': 2}
00 36 36 00 00 00 36 00 00 4c 00 00 00 b6 0b 00 00 36 00 36 00 47 36 00 00 00 00 36 00 36 00 00 00 36 00 36 36 00 00 00 36 00 36 00 4c 00 48 36 4c 36 e0 36 00 36 00 00 36 00 36 e0 e0 36 47 00 00 36 00 36 00 36 00 47 36 00 00 00 36 00 36 36 00 0b 36 00 00 00 47 00 36 00 00 36 e0 00 00 00 36 00 47 36 00 00 36 22 36 00 36 00 00 36 36 00 00 00 36 36 00 00 00 46 00 36 00 00 36 00 00 00 00 36 00 36 00 36 00 46 36 00 00 00 36 00 00 00 00 36 00 00 48 36 00 00 36 00 00 e0 00 00 00 00 36 00 00 36 00 00 00 36 48 36 00 36 00 47 00 36 00 00 36 00 00 36 00 00 00 36 00 00 36 36 47 36 0b 00 36 00 36 36 00 36 00 36 00 00 00 36 e0 00 36 0a 36 36 00 00 36 36 00 36 00 36 e0 47 36 00 00 47 36 00 36 e0 00 00 36 00 36 00 00 36 00 00 36 4c 00 00 00 00 36 00 00 00 36 00 36 00 36 00 4c 00 00 47 36 00 36 00 36 00 36 47 4c 36 00 00 00 00 36 00 36 36 00 36 00 36 00 36 00 00 00 00 47 36 00 00 22 00 36 00 36 ff 00 e0 00 00 00 00 53 00 48 00 0a 47 36 36 00 36 00 00 00 00 00 00 36 36 47 47 36 00 00 36 36 00 00 00 00 00 00 00 36 00 00 00 36 00 36 65 36 00 00 00 36 00 36 00 36 ff 36 00 36 00 36 00 47 00 00 36 00 00 00 36 00 00 00 36 cf 00 00 00 00 36 00 36 00 36 00 53 48 36 00 00 36 00 46 00 36 00 36 00 00 00 36 00 36 00 00 36 00 36 00 00 48 00 00 36 36 47 00 36 e0 00 36 48 00 00 00 36 00 00 46 00 00 36 00 00 36 36 00 00 4c 46
*/
