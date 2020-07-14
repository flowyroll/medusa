.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x171e5, %r11
nop
nop
add $49417, %r8
mov (%r11), %edi
nop
nop
sub $23453, %r14
lea addresses_D_ht+0x10539, %r14
nop
nop
add %rax, %rax
movb (%r14), %bl
nop
nop
xor $46238, %rbx
lea addresses_normal_ht+0xd665, %rax
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
inc %rbx
lea addresses_WC_ht+0xada5, %rbx
nop
nop
and $31463, %r8
movw $0x6162, (%rbx)
nop
nop
nop
nop
add $5008, %rax
lea addresses_A_ht+0x23e5, %rsi
lea addresses_UC_ht+0xe10, %rdi
nop
nop
nop
nop
nop
xor $5452, %rax
mov $106, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1e585, %rcx
nop
nop
nop
nop
dec %rsi
movl $0x61626364, (%rcx)
and $53118, %rcx
lea addresses_UC_ht+0x16ba5, %r11
clflush (%r11)
nop
nop
cmp $30149, %r14
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
add $3713, %rbx
lea addresses_WC_ht+0xaa5, %rsi
lea addresses_WT_ht+0x10c25, %rdi
sub %r8, %r8
mov $51, %rcx
rep movsq
nop
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x19f17, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%rdi)
nop
inc %r8
lea addresses_normal_ht+0x1410, %r14
nop
add %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r14)
cmp %r8, %r8
lea addresses_normal_ht+0xe1a5, %rsi
lea addresses_A_ht+0xab25, %rdi
nop
nop
nop
cmp %r14, %r14
mov $79, %rcx
rep movsw
nop
nop
xor $47965, %rbx
lea addresses_UC_ht+0xcced, %rax
sub %rsi, %rsi
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
nop
nop
sub $45820, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rdi
push %rsi

// Store
mov $0x1470d90000000da5, %rsi
and $56213, %r10
movw $0x5152, (%rsi)
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_A+0x18ba5, %r9
clflush (%r9)
nop
nop
cmp $34966, %r12
movb $0x51, (%r9)
and $60282, %r13

// Store
lea addresses_PSE+0x2d65, %r10
nop
add $26168, %r12
movw $0x5152, (%r10)
cmp $40146, %r10

// Store
lea addresses_A+0x19245, %r10
nop
nop
nop
nop
nop
add $32789, %rdi
movb $0x51, (%r10)
nop
nop
nop
nop
and %r9, %r9

// Store
mov $0x4d48c300000009d5, %r13
clflush (%r13)
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%r13)
nop
dec %r14

// Load
lea addresses_A+0xbf75, %rdi
nop
nop
sub %r12, %r12
mov (%rdi), %r13w
nop
nop
nop
and %r12, %r12

// Faulty Load
mov $0x1470d90000000da5, %r9
cmp %r14, %r14
mov (%r9), %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1018, '52': 71}
00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 52 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00
*/
