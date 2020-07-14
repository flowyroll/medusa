.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x3139, %rax
nop
nop
and $25653, %rbp
movl $0x61626364, (%rax)
nop
nop
nop
nop
and $7952, %rbp
lea addresses_WC_ht+0x1d87, %rcx
clflush (%rcx)
nop
nop
dec %r10
mov (%rcx), %bp
nop
nop
and %r12, %r12
lea addresses_A_ht+0x494d, %rbx
nop
nop
sub %r11, %r11
movb (%rbx), %cl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1539, %r10
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, (%r10)
nop
nop
nop
nop
nop
xor $33150, %rcx
lea addresses_WC_ht+0x18d29, %rsi
lea addresses_D_ht+0x8241, %rdi
nop
cmp $39726, %rax
mov $58, %rcx
rep movsw
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x10f09, %rsi
lea addresses_WC_ht+0xcd4d, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $80, %rcx
rep movsw
nop
nop
nop
xor $52214, %rdi
lea addresses_normal_ht+0x15dd9, %rsi
lea addresses_WT_ht+0xf439, %rdi
clflush (%rdi)
nop
nop
nop
dec %rax
mov $51, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_D_ht+0xf939, %r11
nop
nop
nop
nop
inc %rbx
mov (%r11), %eax
nop
nop
inc %r11
lea addresses_A_ht+0x93b9, %rdi
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
xor $12562, %rbx
lea addresses_D_ht+0x56f9, %rbp
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
sub $55051, %rcx
lea addresses_D_ht+0x1e539, %rbx
nop
nop
add %rax, %rax
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %r12
add $64221, %rbx
lea addresses_WT_ht+0x19137, %rsi
lea addresses_A_ht+0x18bc1, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $16, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1b5a9, %rsi
lea addresses_WC_ht+0xba69, %rdi
nop
and $10231, %r10
mov $81, %rcx
rep movsq
nop
nop
nop
add $57426, %r10
lea addresses_D_ht+0xd81b, %rax
nop
nop
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%rax)
cmp %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x439, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $53690, %rsi
movb $0x51, (%rcx)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
mov $0xdc4d10000000439, %rsi
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rsi)
nop
add $33446, %r11

// Store
lea addresses_WT+0xcc39, %r8
nop
xor $15879, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r8)
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0x12539, %r11
nop
nop
nop
nop
nop
xor $11967, %rbx
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_normal+0x11b79, %rcx
clflush (%rcx)
nop
cmp %r11, %r11
movb (%rcx), %r8b
nop
and $4155, %rsi

// Load
lea addresses_US+0x183b9, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%rdi), %cx
inc %rsi

// Store
lea addresses_D+0xdf39, %rcx
nop
nop
nop
nop
nop
sub $49122, %r13
movb $0x51, (%rcx)
nop
nop
nop
add $28335, %rbx

// Store
lea addresses_US+0x60d9, %rdi
sub $20608, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
and %r8, %r8

// Store
lea addresses_RW+0x44b9, %r11
xor $4764, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_A+0x139, %r8
nop
nop
nop
nop
nop
sub $9726, %r13
mov (%r8), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
