.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13260, %rsi
lea addresses_D_ht+0x5860, %rdi
nop
nop
nop
nop
nop
sub $33162, %r14
mov $9, %rcx
rep movsw
nop
nop
cmp $46063, %r9
lea addresses_WC_ht+0x51b4, %rsi
lea addresses_WC_ht+0x2bbf, %rdi
nop
nop
inc %r11
mov $30, %rcx
rep movsl
add %rcx, %rcx
lea addresses_normal_ht+0x1e619, %rsi
lea addresses_UC_ht+0x70e0, %rdi
dec %r15
mov $25, %rcx
rep movsw
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x17460, %rcx
cmp $48194, %rdi
movl $0x61626364, (%rcx)
nop
sub $56234, %r15
lea addresses_WT_ht+0x1718, %rsi
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x19460, %r9
xor %r11, %r11
mov $0x6162636465666768, %r15
movq %r15, (%r9)
xor $50001, %rdi
lea addresses_UC_ht+0x36f0, %rsi
lea addresses_WT_ht+0x1ee80, %rdi
clflush (%rsi)
clflush (%rdi)
add %r13, %r13
mov $20, %rcx
rep movsb
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x19560, %r15
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r15)
nop
add $52631, %r11
lea addresses_normal_ht+0xec60, %r9
clflush (%r9)
nop
sub %rsi, %rsi
mov (%r9), %di
xor $9534, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Store
mov $0x6356040000000460, %rdi
add $4136, %rax
movb $0x51, (%rdi)
nop
sub %rdi, %rdi

// Store
lea addresses_US+0xc3e8, %rdi
nop
nop
nop
cmp $57474, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovaps %ymm4, (%rdi)
add $33890, %rbx

// Faulty Load
lea addresses_US+0x9460, %rbx
nop
nop
sub %rax, %rax
mov (%rbx), %edi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': True}}
{'51': 1371, '16': 718, '00': 1}
51 51 51 51 51 51 51 51 16 16 16 51 16 51 51 51 51 51 51 51 16 51 16 51 16 51 51 51 51 16 16 16 51 16 51 51 16 16 51 16 51 51 51 16 51 16 51 51 51 51 51 16 16 16 16 51 51 51 16 51 16 51 51 16 51 16 51 51 51 51 51 51 51 16 51 16 51 51 51 51 51 51 16 51 51 16 51 16 51 51 51 16 16 51 51 16 16 51 51 16 16 51 51 16 16 16 16 51 16 51 51 16 51 16 51 16 51 51 16 51 51 51 51 51 51 16 16 51 51 51 51 51 51 51 51 51 51 51 16 16 51 16 51 16 51 16 51 51 51 16 16 16 16 51 51 16 51 51 51 51 51 51 16 51 51 16 16 51 51 51 16 51 16 16 16 51 51 51 51 51 16 16 16 16 51 16 16 51 51 16 51 16 51 51 16 16 51 51 16 16 16 16 51 16 51 16 16 51 51 51 51 16 51 16 16 51 51 51 51 51 51 16 51 51 16 16 51 16 16 51 16 16 51 16 16 51 51 51 51 51 16 51 51 51 16 51 51 51 16 51 51 51 51 16 16 51 16 51 51 16 51 16 16 51 51 16 16 16 51 51 51 51 16 51 51 51 16 51 16 51 16 51 51 51 16 51 51 16 51 51 51 16 51 51 51 16 16 16 16 51 51 51 16 16 51 16 51 51 51 16 51 16 16 51 51 51 51 16 16 51 16 51 51 51 51 51 51 16 16 51 16 51 16 16 16 16 51 51 51 16 51 51 51 51 16 16 51 51 16 51 16 51 51 51 51 16 16 16 16 16 16 16 51 16 51 51 51 51 16 16 16 51 51 51 51 51 51 16 16 51 51 51 16 51 16 51 16 16 51 16 16 51 51 51 16 51 16 16 51 51 51 51 51 16 51 51 51 16 16 51 51 51 51 51 16 16 51 51 16 51 16 51 51 51 51 16 16 16 16 16 51 51 51 16 16 51 51 51 51 51 16 16 16 51 51 16 51 51 16 51 16 51 16 51 16 51 51 51 51 16 16 51 16 16 16 51 51 51 51 51 51 16 51 51 16 16 51 51 51 51 16 51 16 51 51 51 51 16 16 51 51 51 51 51 51 16 51 51 51 51 51 51 51 51 16 16 16 51 51 51 16 51 51 16 51 51 16 16 16 51 16 16 51 16 51 51 51 16 16 16 16 51 51 51 51 51 51 51 51 51 16 51 16 16 16 51 16 51 16 51 51 51 51 16 16 16 51 51 51 51 16 16 16 51 51 16 51 51 51 51 51 51 51 16 16 51 51 16 51 16 51 51 51 51 51 51 16 16 51 51 51 51 51 51 51 16 51 16 51 16 51 16 16 16 16 16 51 51 51 16 51 51 16 51 51 16 16 16 51 16 51 16 51 51 51 16 51 16 51 51 16 51 51 51 51 51 51 16 51 16 16 16 51 16 51 51 16 51 16 16 51 51 51 51 51 16 51 51 16 51 51 51 16 16 51 51 51 51 16 16 51 16 51 51 51 16 16 16 51 51 51 51 16 51 16 16 51 51 16 51 51 51 51 51 16 51 51 51 51 51 51 51 16 16 00 51 51 51 16 51 51 51 51 51 16 16 51 51 16 16 51 51 16 51 51 51 51 16 51 51 16 51 51 51 16 51 51 51 51 16 16 16 16 16 16 51 16 51 51 16 16 51 51 16 51 51 51 51 51 51 51 16 51 51 16 16 51 51 51 51 51 16 16 51 16 51 16 16 16 16 16 51 16 16 51 51 51 16 51 51 16 16 51 51 16 51 51 51 16 16 51 51 51 51 51 16 16 16 16 51 51 51 16 16 16 51 16 16 51 51 51 51 51 51 16 51 51 51 16 51 51 51 16 51 16 51 51 51 16 51 51 51 51 16 51 16 51 51 51 51 16 51 16 16 51 51 51 16 16 51 51 51 51 51 51 51 51 51 16 16 51 51 51 51 51 51 16 51 51 51 51 51 51 51 51 51 16 51 16 51 51 16 51 51 51 16 51 51 51 16 16 51 51 51 51 51 51 51 51 51 16 51 16 51 16 51 51 51 51 16 16 51 16 51 51 51 51 51 51 51 51 51 51 51 16 51 51 51 51 51 51 51 51 16 16 51 51 51 51 16 51 16 16 16 16 51 16 16 51 51 51 51 51 51 51 51 51 51 16 51 51 16 51 51 16 16 51 51 51 51 51 16 51 51 16 51 51 16 51 51 51 51 51 16 51 51 51 16 51 51
*/
