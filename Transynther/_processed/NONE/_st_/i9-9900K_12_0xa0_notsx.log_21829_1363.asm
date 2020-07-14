.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1bb03, %rcx
and %r8, %r8
mov (%rcx), %rbp
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x17103, %r14
and %rdi, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
xor $28077, %rdi
lea addresses_A_ht+0x35c3, %rsi
lea addresses_A_ht+0x77b0, %rdi
and $47534, %r11
mov $64, %rcx
rep movsq
nop
nop
dec %rdi
lea addresses_WT_ht+0x1ca50, %rsi
lea addresses_WC_ht+0x587b, %rdi
nop
nop
add %r8, %r8
mov $102, %rcx
rep movsl
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x12aa3, %rbp
nop
nop
xor $49265, %r11
movb $0x61, (%rbp)
nop
nop
nop
nop
cmp $13401, %rcx
lea addresses_D_ht+0xcebb, %rsi
lea addresses_D_ht+0xcc3, %rdi
nop
nop
dec %r14
mov $69, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_D_ht+0x1e7c3, %rsi
sub $60851, %rcx
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %r11
nop
and $192, %rbp
lea addresses_A_ht+0x4203, %rcx
nop
nop
nop
nop
cmp %r14, %r14
mov (%rcx), %esi
nop
nop
nop
nop
sub $10050, %rbp
lea addresses_D_ht+0x178d3, %rsi
lea addresses_A_ht+0xed46, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $35, %rcx
rep movsl
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x159d3, %rcx
nop
nop
nop
nop
nop
xor $14961, %r14
mov (%rcx), %r15d
nop
and %r11, %r11
lea addresses_WT_ht+0x1903, %rsi
lea addresses_A_ht+0x15263, %rdi
nop
nop
add %rbp, %rbp
mov $66, %rcx
rep movsl
nop
nop
nop
xor $25709, %r11
lea addresses_D_ht+0x8703, %rbp
nop
nop
nop
nop
nop
dec %r14
movw $0x6162, (%rbp)
nop
nop
nop
cmp $42011, %r8
lea addresses_WC_ht+0x1eec3, %rcx
nop
xor %rbp, %rbp
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x6903, %r10
cmp $61179, %rcx
movw $0x5152, (%r10)
nop
nop
nop
nop
xor $38254, %r10

// Store
lea addresses_D+0x18103, %r15
clflush (%r15)
xor %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r15)
cmp %r14, %r14

// Load
lea addresses_WC+0x57e3, %rcx
and $29259, %r8
mov (%rcx), %r15
sub %r8, %r8

// REPMOV
lea addresses_D+0x14ba3, %rsi
lea addresses_PSE+0xfb03, %rdi
nop
dec %r8
mov $19, %rcx
rep movsl
xor %rcx, %rcx

// REPMOV
lea addresses_normal+0x57b1, %rsi
lea addresses_D+0x18103, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r9, %r9
mov $122, %rcx
rep movsw
nop
cmp %r15, %r15

// Faulty Load
lea addresses_D+0x18103, %r8
nop
sub %rdi, %rdi
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': True}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
