.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xade6, %r10
nop
nop
and %r11, %r11
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
xor %r12, %r12
lea addresses_A_ht+0x1cf7b, %r10
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%r10)
xor $52526, %r11
lea addresses_A_ht+0x1ee13, %rsi
lea addresses_WT_ht+0x54db, %rdi
nop
nop
nop
sub $51241, %r8
mov $85, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x39eb, %r8
dec %rbx
mov (%r8), %r11w
nop
nop
nop
nop
add $2878, %rax
lea addresses_normal_ht+0x814b, %rsi
lea addresses_D_ht+0x11a43, %rdi
nop
nop
sub %rax, %rax
mov $41, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x523, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
dec %r12
mov (%rcx), %r11w
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x19e9b, %rsi
lea addresses_WT_ht+0x10a5b, %rdi
nop
cmp %r11, %r11
mov $101, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $8763, %rdi
lea addresses_A_ht+0xa4db, %rsi
lea addresses_WT_ht+0x11cdb, %rdi
nop
nop
nop
and $19173, %r11
mov $59, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x401b, %r12
clflush (%r12)
cmp $26692, %r11
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
nop
cmp $16372, %r10
lea addresses_normal_ht+0x127b, %rsi
nop
nop
nop
xor %rbx, %rbx
mov (%rsi), %rdi
nop
nop
xor $8082, %r8
lea addresses_UC_ht+0x135b, %rsi
lea addresses_D_ht+0xe3bb, %rdi
clflush (%rsi)
inc %rbx
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x2d1c, %r11
nop
nop
nop
cmp %rcx, %rcx
mov (%r11), %r10w
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x19307, %rsi
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
and %r8, %r8
lea addresses_A_ht+0x321b, %r8
nop
nop
xor %r12, %r12
mov (%r8), %r10
nop
nop
and $11046, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x14cdb, %rbx
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
inc %rax

// Store
lea addresses_UC+0x151ce, %r15
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r15)
nop
cmp %rsi, %rsi

// Store
lea addresses_PSE+0x3103, %rax
nop
nop
nop
nop
add $2395, %r8
movw $0x5152, (%rax)
nop
nop
nop
sub $58602, %rsi

// Store
lea addresses_normal+0x1db, %rsi
nop
nop
nop
nop
sub $64550, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
and %r8, %r8

// Load
mov $0x7485020000000cdb, %r10
nop
nop
nop
and %rax, %rax
movntdqa (%r10), %xmm3
vpextrq $0, %xmm3, %r8
nop
xor $26729, %r15

// Store
lea addresses_A+0x47e1, %r8
nop
nop
nop
xor $23853, %r10
movb $0x51, (%r8)

// Exception!!!
nop
mov (0), %r10
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_UC+0x94db, %r15
clflush (%r15)
add %rsi, %rsi
movb (%r15), %r10b
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 4, 'size': 2, 'same': True, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 6, 'size': 8, 'same': False, 'NT': True}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
