.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14a38, %r9
nop
nop
add %r11, %r11
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
and $5595, %rbp
lea addresses_normal_ht+0x15f81, %r15
inc %rcx
movw $0x6162, (%r15)
and %r11, %r11
lea addresses_A_ht+0x2c4a, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor $20749, %r8
movb $0x61, (%r15)
nop
nop
nop
nop
nop
and $36332, %r8
lea addresses_D_ht+0xebb1, %rsi
lea addresses_UC_ht+0x123b1, %rdi
clflush (%rdi)
nop
inc %r9
mov $20, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1e1b1, %rbp
nop
nop
and %rdi, %rdi
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x9f55, %rsi
lea addresses_normal_ht+0x131f1, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $88, %rcx
rep movsq
nop
nop
nop
nop
and $55612, %r15
lea addresses_WC_ht+0x9fb1, %rsi
lea addresses_WC_ht+0x1db31, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $12, %rcx
rep movsl
nop
nop
nop
xor $54115, %rbp
lea addresses_WC_ht+0x7fb1, %r8
nop
nop
cmp $64151, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
and $49640, %r11
lea addresses_WC_ht+0x17c51, %rsi
lea addresses_WC_ht+0x16db1, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $24, %rcx
rep movsq
sub %rbp, %rbp
lea addresses_A_ht+0x18851, %rsi
lea addresses_normal_ht+0x19bb1, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $29, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x16bb1, %rsi
nop
cmp %r9, %r9
movw $0x6162, (%rsi)
nop
nop
nop
xor $63563, %r9
lea addresses_UC_ht+0xe595, %rcx
nop
nop
nop
nop
nop
inc %r15
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
xor $26831, %r8
lea addresses_UC_ht+0xbbb1, %rsi
lea addresses_WC_ht+0x4bb1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $117, %rcx
rep movsw
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x101a1, %r8
and %rcx, %rcx
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0xc511, %rsi
lea addresses_WT_ht+0xa7b1, %rdi
nop
nop
nop
nop
nop
and $32096, %r15
mov $76, %rcx
rep movsb
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x9fb1, %rdx
nop
nop
nop
nop
and %r10, %r10
movl $0x51525354, (%rdx)
nop
sub %rdi, %rdi

// Store
mov $0x3b1, %r15
inc %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
nop
xor $13800, %r15

// Load
lea addresses_WC+0x17761, %r11
nop
dec %rsi
movb (%r11), %r9b
nop
nop
nop
nop
nop
sub $64568, %rsi

// Faulty Load
lea addresses_US+0x10bb1, %r10
nop
nop
dec %rdx
mov (%r10), %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
