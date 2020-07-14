.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xff45, %rbp
nop
nop
nop
nop
cmp %r9, %r9
movw $0x6162, (%rbp)
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x2035, %r14
nop
nop
and %rsi, %rsi
movw $0x6162, (%r14)
dec %rsi
lea addresses_WC_ht+0xdf45, %rsi
lea addresses_WC_ht+0x155c5, %rdi
clflush (%rdi)
nop
add %r9, %r9
mov $43, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x10aa5, %rsi
lea addresses_WC_ht+0x820d, %rdi
nop
and %rbp, %rbp
mov $19, %rcx
rep movsq
nop
nop
cmp $41769, %r9
lea addresses_UC_ht+0x6c83, %r9
nop
nop
nop
nop
nop
xor $43614, %rbp
mov (%r9), %r11w
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x8065, %rdi
nop
nop
nop
nop
nop
dec %rsi
mov (%rdi), %r14d
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x1b0dd, %rsi
lea addresses_A_ht+0x1b345, %rdi
nop
nop
xor %r11, %r11
mov $108, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1b345, %rcx
nop
nop
nop
nop
nop
sub $49339, %rbx
mov (%rcx), %si
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x1af05, %rbx
nop
nop
xor $3213, %r11
mov (%rbx), %r9d
nop
nop
nop
sub $16341, %rdi
lea addresses_A_ht+0x11945, %rcx
nop
nop
and $25106, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rcx)
nop
nop
xor $58385, %r11
lea addresses_normal_ht+0xdf45, %rsi
lea addresses_WT_ht+0x85ad, %rdi
nop
nop
cmp $53455, %r14
mov $28, %rcx
rep movsl
xor $60250, %rbx
lea addresses_UC_ht+0x10aca, %rsi
lea addresses_WT_ht+0x1c345, %rdi
nop
xor $54083, %rbp
mov $50, %rcx
rep movsb
xor $48830, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Load
mov $0x745, %rcx
nop
nop
nop
nop
nop
and $54013, %r14
movntdqa (%rcx), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
cmp $9908, %rsi

// Faulty Load
mov $0x745, %rbx
nop
nop
nop
xor %r12, %r12
vmovaps (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}}
{'44': 702, '00': 91, '48': 139}
44 44 44 44 44 44 44 48 44 48 44 44 44 44 48 44 44 44 44 44 48 44 44 00 44 44 44 44 44 44 44 44 44 48 48 44 44 44 44 48 44 44 44 00 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 48 44 44 44 48 44 44 00 00 44 44 44 00 44 44 44 44 44 44 00 00 48 48 48 44 44 48 44 44 48 44 44 44 44 48 00 48 44 48 48 00 44 44 44 48 00 48 44 44 48 44 48 00 48 00 44 44 00 44 00 48 48 00 44 44 48 44 00 44 48 44 44 44 48 44 44 44 44 48 44 44 44 44 44 44 00 48 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 48 00 44 44 48 48 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 00 00 44 44 44 48 48 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 48 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 48 44 44 44 48 44 44 44 44 44 44 00 00 48 44 44 48 48 44 44 44 48 44 44 44 48 44 48 44 44 44 00 44 44 44 00 44 48 44 48 44 00 44 44 44 44 48 44 44 00 00 44 44 00 00 48 44 44 44 48 00 44 48 44 44 44 00 00 44 44 00 44 00 44 44 00 44 44 48 00 48 44 44 44 44 44 44 44 44 48 00 00 00 44 48 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 48 44 44 48 44 44 44 48 44 44 44 44 44 44 48 44 44 44 44 48 44 48 44 44 44 44 44 48 44 44 48 44 48 00 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 48 44 44 44 00 44 44 44 44 48 48 44 44 48 48 48 44 44 44 44 44 44 44 44 44 44 44 48 44 00 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 48 44 48 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 48 44 44 48 48 48 44 44 44 44 44 44 48 00 44 44 00 48 00 44 44 00 48 48 48 44 44 44 44 00 44 00 44 44 48 44 00 44 44 44 44 44 44 44 00 44 44 48 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 48 44 44 48 44 44 48 44 44 44 00 44 44 48 48 44 48 44 48 00 00 48 44 00 44 44 44 44 00 44 44 44 48 44 44 48 44 00 44 44 44 44 00 48 44 48 44 48 44 44 44 48 44 44 44 48 44 44 48 44 44 44 44 48 44 44 44 00 48 44 44 48 44 00 44 44 44 44 44 44 44 44 44 44 48 44 44 44 44 00 44 44 44 44 44 44 44 48 00 48 44 44 44 48 44 44 00 44 44 44 00 44 44 44 44 44 44 48 44 44 44 44 44 44 00 44 44 48 44 00 44 44 44 44 44 44 44 44 00 00 44 00 44 44 48 44 48 44 44 44 00 00 44 44 44 44 44 48 48 44 44 44 44 44 44 48 48 44 44 44 44 48 00 00 00 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44 48 48 44 48 44 44 00 44 44 00 44 44 44 48 44 44 44 48 44 44 44 48 44 44 44 44 44 44 44 44 44 44 48 48 44 44 44 44 44 44 44 48 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 48 44 44 44 44 44 44 44 44 44 44 44 44
*/
