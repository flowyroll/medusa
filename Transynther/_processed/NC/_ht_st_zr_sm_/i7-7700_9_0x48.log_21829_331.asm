.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ac1c, %rsi
lea addresses_normal_ht+0x13b1c, %rdi
nop
xor $9263, %r14
mov $70, %rcx
rep movsw
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x434c, %rbp
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%rbp), %ebx
cmp $35287, %r14
lea addresses_WT_ht+0x1d1dc, %rcx
nop
xor $28826, %rbx
mov (%rcx), %rbp
nop
nop
nop
nop
nop
cmp $64120, %r14
lea addresses_WC_ht+0x1aed4, %rsi
dec %rbp
mov (%rsi), %cx
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0x1b1c, %rsi
nop
and %rbx, %rbx
mov (%rsi), %rdi
nop
nop
nop
xor $47802, %rcx
lea addresses_UC_ht+0x7894, %rdi
nop
xor $44929, %rcx
movb (%rdi), %bl
nop
dec %rcx
lea addresses_A_ht+0x1331c, %r14
nop
nop
nop
sub %r13, %r13
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
sub $41307, %rdi
lea addresses_WT_ht+0x1594e, %rbp
nop
sub %rcx, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
nop
dec %r14
lea addresses_D_ht+0x1441c, %rsi
lea addresses_WC_ht+0x1c31c, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $38, %rcx
rep movsb
nop
xor $31439, %r15
lea addresses_UC_ht+0x571c, %rsi
lea addresses_D_ht+0x1215c, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $33, %rcx
rep movsw
nop
nop
nop
and $36375, %rbp
lea addresses_WT_ht+0x170d0, %rsi
lea addresses_D_ht+0x107dc, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $87, %rcx
rep movsl
nop
nop
nop
add $41493, %rsi
lea addresses_D_ht+0x1031c, %r14
nop
nop
nop
dec %r13
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x14dc0, %r13
nop
nop
add $11399, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
movups %xmm3, (%r13)
nop
nop
and $63366, %r15
lea addresses_UC_ht+0x11da4, %rsi
lea addresses_WC_ht+0xb91c, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r15
mov $51, %rcx
rep movsw
and $56813, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x3d42f70000000b1c, %rbp
nop
sub %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rbp)
nop
cmp $6837, %rbx

// Store
mov $0x3d42f70000000b1c, %rdx
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rdx)
nop
add %rcx, %rcx

// Store
mov $0x2f54c00000000d1c, %r9
nop
inc %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_UC+0xe330, %rcx
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
dec %r9

// Load
lea addresses_PSE+0x1fb20, %rdx
sub $13375, %r9
mov (%rdx), %bx
nop
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
mov $0x3d42f70000000b1c, %r11
clflush (%r11)
nop
nop
nop
nop
and %rdx, %rdx
mov (%r11), %r9d
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'58': 20825, '44': 129, '46': 12, '00': 863}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 46 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 44 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 44 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 44 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 44 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 44 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 44 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58
*/
