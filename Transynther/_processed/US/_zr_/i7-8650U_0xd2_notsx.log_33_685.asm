.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xfd0b, %rdi
nop
nop
nop
nop
nop
cmp $25462, %rbx
movb (%rdi), %r13b
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x19f5f, %r10
cmp $53176, %rax
movb $0x61, (%r10)
nop
nop
nop
nop
nop
cmp $64988, %r10
lea addresses_A_ht+0x4483, %rsi
lea addresses_D_ht+0x64bb, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor $29648, %rax
mov $73, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x8c0b, %r14
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%r14)
nop
sub $29368, %rsi
lea addresses_WC_ht+0xc3a3, %rcx
clflush (%rcx)
nop
cmp $21024, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0x1030b, %rbx
nop
cmp $54377, %rax
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
add $857, %r13
lea addresses_UC_ht+0x230b, %rbx
and $32788, %r10
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xf641, %rsi
lea addresses_WT_ht+0x45cb, %rdi
nop
nop
nop
sub %r14, %r14
mov $66, %rcx
rep movsq
sub $39025, %rdi
lea addresses_UC_ht+0x15a8b, %rsi
lea addresses_WT_ht+0x1e70b, %rdi
nop
nop
nop
nop
nop
xor $3339, %r10
mov $64, %rcx
rep movsw
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0xeb0b, %rdi
nop
nop
xor %rbx, %rbx
movw $0x6162, (%rdi)
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x1c813, %rax
nop
nop
nop
inc %rbx
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
nop
and $7273, %r13
lea addresses_UC_ht+0x1570b, %rsi
lea addresses_A_ht+0x2507, %rdi
clflush (%rdi)
nop
nop
add %r13, %r13
mov $112, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x360f, %r14
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
xor $47694, %r10
lea addresses_normal_ht+0x153cb, %rsi
lea addresses_normal_ht+0x1210b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $55871, %r13
mov $127, %rcx
rep movsq
nop
nop
nop
nop
add $38658, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1da03, %r11
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
mov $0x67b7ca00000005d3, %rsi
clflush (%rsi)
sub $57438, %rbx
movb $0x51, (%rsi)
cmp $30903, %rdx

// Store
lea addresses_A+0xdb8b, %r13
nop
xor $65143, %rbx
movw $0x5152, (%r13)
nop
nop
and %r11, %r11

// Load
mov $0x5e21070000000b8b, %rdx
nop
nop
nop
dec %rbx
vmovntdqa (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
dec %r11

// Faulty Load
lea addresses_US+0x11b0b, %rdi
nop
dec %r13
mov (%rdi), %ecx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'00': 33}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
