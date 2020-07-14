.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16006, %rbp
nop
nop
nop
nop
add $19188, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
mfence
lea addresses_normal_ht+0x2dda, %rcx
nop
nop
dec %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x111da, %rsi
lea addresses_UC_ht+0x6d98, %rdi
nop
nop
nop
and %r9, %r9
mov $43, %rcx
rep movsb
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0xbdaa, %rsi
nop
nop
nop
nop
sub $7071, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x181da, %rbp
nop
sub $56396, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
and $0xffffffffffffffc0, %rbp
movaps %xmm3, (%rbp)
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdx

// Store
mov $0x39a, %rax
nop
nop
nop
xor $41855, %r13
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub %rax, %rax

// Load
mov $0x278a700000000226, %rdx
and $4763, %r15
mov (%rdx), %eax
nop
nop
nop
and %rax, %rax

// Store
lea addresses_A+0x1579a, %r8
clflush (%r8)
nop
nop
add $21453, %rax
movl $0x51525354, (%r8)
nop
add $51370, %rdx

// Faulty Load
lea addresses_US+0x109da, %rcx
nop
nop
nop
sub %r13, %r13
mov (%rcx), %r8w
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 100}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
