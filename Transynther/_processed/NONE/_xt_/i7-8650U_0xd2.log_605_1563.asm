.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x13cc5, %rsi
lea addresses_WT_ht+0x1d401, %rdi
sub $23362, %r13
mov $89, %rcx
rep movsq
nop
nop
nop
nop
sub $65319, %r9
lea addresses_A_ht+0xb8c5, %r10
nop
nop
nop
nop
add %rbx, %rbx
movups (%r10), %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
xor $62184, %r13
lea addresses_normal_ht+0x50c5, %r9
nop
nop
nop
dec %rdi
movw $0x6162, (%r9)
sub $31575, %r9
lea addresses_WC_ht+0x15d85, %r13
sub $36549, %r9
movb (%r13), %r10b
nop
nop
nop
nop
nop
inc %r13
lea addresses_A_ht+0x13f89, %rbx
add %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x78c5, %rsi
lea addresses_UC_ht+0x12785, %rdi
clflush (%rsi)
nop
nop
nop
dec %r9
mov $42, %rcx
rep movsw
nop
dec %rsi
lea addresses_UC_ht+0x14dc5, %rsi
lea addresses_D_ht+0x40c5, %rdi
nop
nop
nop
xor %r11, %r11
mov $113, %rcx
rep movsl
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0xc105, %rcx
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rcx)
xor $33532, %r11
lea addresses_D_ht+0x150c5, %rdi
nop
nop
nop
nop
nop
and $56243, %r10
mov (%rdi), %bx
nop
nop
nop
nop
sub $47602, %rcx
lea addresses_A_ht+0x180e4, %r11
clflush (%r11)
nop
nop
nop
sub $61539, %rdi
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
cmp $17378, %rcx
lea addresses_D_ht+0x14645, %r9
nop
nop
and $27370, %rsi
movb $0x61, (%r9)
nop
cmp $32947, %rcx
lea addresses_A_ht+0x1dba5, %rsi
nop
and $62736, %r13
movl $0x61626364, (%rsi)
nop
nop
nop
and $5194, %r9
lea addresses_normal_ht+0x1a225, %rsi
lea addresses_WC_ht+0xa5f9, %rdi
nop
nop
nop
nop
sub $32694, %r9
mov $14, %rcx
rep movsb
nop
and $50216, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rsi

// Store
lea addresses_RW+0x10271, %r9
clflush (%r9)
nop
nop
nop
and $25945, %rbp
movl $0x51525354, (%r9)
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_normal+0xe845, %r13
nop
nop
nop
sub %r15, %r15
mov (%r13), %bp
nop
nop
and %rsi, %rsi

// Store
lea addresses_normal+0x19ac5, %r11
nop
sub $6419, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovntdq %ymm1, (%r11)
nop
nop
nop
nop
nop
cmp $64183, %rsi

// Faulty Load
lea addresses_RW+0x188c5, %r13
nop
nop
inc %r15
movb (%r13), %r10b
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'32': 605}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
