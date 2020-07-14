.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15699, %r11
nop
nop
nop
nop
dec %rbp
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0xa5a1, %rdx
nop
nop
and %rsi, %rsi
mov (%rdx), %r15d
nop
nop
xor $34288, %r11
lea addresses_normal_ht+0x13581, %r15
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movb (%r15), %bl
nop
nop
sub $35222, %rbp
lea addresses_UC_ht+0xf721, %rsi
lea addresses_D_ht+0x9ebd, %rdi
nop
xor %rbp, %rbp
mov $100, %rcx
rep movsw
nop
inc %rcx
lea addresses_D_ht+0x18a0c, %rbp
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x1ee21, %rbx
nop
nop
nop
sub %rdx, %rdx
movw $0x6162, (%rbx)
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x9321, %r15
add $2158, %rbp
mov (%r15), %edi
nop
nop
and %r11, %r11
lea addresses_normal_ht+0xc59, %r11
clflush (%r11)
add $44316, %rsi
movb $0x61, (%r11)
nop
nop
nop
nop
nop
sub $46041, %rbp
lea addresses_WC_ht+0xe1c1, %rsi
lea addresses_WC_ht+0x155f1, %rdi
nop
add $64423, %rax
mov $73, %rcx
rep movsl
xor %rax, %rax
lea addresses_WT_ht+0xeb21, %rbx
nop
nop
nop
dec %rcx
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
nop
nop
nop
xor $29397, %rax
lea addresses_UC_ht+0x1df65, %rcx
nop
nop
and $11628, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
add $13347, %r11
lea addresses_UC_ht+0x154c1, %rdx
nop
nop
xor %r15, %r15
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
and $671, %rax
lea addresses_D_ht+0x58f9, %rcx
nop
nop
nop
nop
nop
and $30382, %rdx
mov (%rcx), %di
nop
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x1d121, %r10
clflush (%r10)
nop
add %rdi, %rdi
movw $0x5152, (%r10)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
nop
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_A+0x15b21, %r12
nop
nop
nop
nop
nop
and $3619, %rcx
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
and $65228, %rdi

// Store
mov $0x5c1b9a0000000ca1, %rcx
clflush (%rcx)
nop
nop
nop
sub $49667, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rcx)
nop
cmp $17418, %r10

// Store
lea addresses_US+0xca56, %r15
nop
nop
and %r10, %r10
movl $0x51525354, (%r15)
nop
nop
nop
nop
add $15057, %r15

// Faulty Load
lea addresses_A+0x9b21, %r15
sub $51408, %rax
mov (%r15), %cx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'00': 1}
00
*/
