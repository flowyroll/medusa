.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5b4c, %r12
nop
nop
nop
nop
nop
sub $38280, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x48ae, %r14
nop
nop
nop
nop
nop
xor %r11, %r11
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rsi
nop
xor %r14, %r14
lea addresses_D_ht+0x19c5e, %r11
clflush (%r11)
nop
nop
nop
nop
lfence
movl $0x61626364, (%r11)
nop
add $9158, %r11
lea addresses_A_ht+0x857e, %rax
nop
nop
nop
nop
add $53128, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
add $18426, %r11
lea addresses_D_ht+0x15008, %rsi
lea addresses_normal_ht+0xb8e, %rdi
clflush (%rdi)
nop
nop
nop
dec %r9
mov $100, %rcx
rep movsw
dec %rcx
lea addresses_UC_ht+0x1485e, %r11
nop
nop
nop
nop
nop
and $25463, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
sub $27656, %rcx
lea addresses_D_ht+0x1e983, %r9
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r9)
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x4b5e, %rsi
nop
nop
nop
nop
nop
cmp $56000, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xf85e, %r14
xor %r11, %r11
movl $0x61626364, (%r14)
nop
nop
dec %r11
lea addresses_UC_ht+0x404e, %rax
nop
nop
nop
nop
nop
add $55587, %rcx
movups (%rax), %xmm4
vpextrq $1, %xmm4, %r12
and %rsi, %rsi
lea addresses_D_ht+0x49a, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor $41244, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xdde, %rsi
lea addresses_WC_ht+0x1b156, %rdi
nop
nop
nop
nop
cmp $59269, %rax
mov $32, %rcx
rep movsw
nop
nop
cmp $6340, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rdx
push %rsi

// Store
mov $0x23582000000008f6, %r10
dec %r11
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
sub $42539, %rdx

// Load
lea addresses_US+0x1885e, %rsi
nop
nop
nop
nop
and %r11, %r11
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
nop
nop
inc %r12

// Load
lea addresses_normal+0x245c, %rdx
clflush (%rdx)
dec %rax
mov (%rdx), %r9w
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_US+0x705e, %rsi
nop
nop
and $15085, %rax
mov (%rsi), %r9d
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'00': 26}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
