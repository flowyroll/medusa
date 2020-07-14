.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x19433, %rsi
lea addresses_normal_ht+0xcf33, %rdi
nop
and %rax, %rax
mov $41, %rcx
rep movsb
nop
nop
nop
nop
and $42934, %rcx
lea addresses_D_ht+0x1b513, %r12
nop
nop
inc %rbx
movl $0x61626364, (%r12)
cmp %r12, %r12
lea addresses_UC_ht+0x913b, %rax
nop
cmp %r12, %r12
movw $0x6162, (%rax)
nop
nop
sub $26569, %rdi
lea addresses_WC_ht+0x10b4b, %rax
mfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x16e33, %rcx
nop
nop
nop
nop
nop
xor $12191, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $58752, %rbx
lea addresses_D_ht+0xb9d3, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rcx), %edi
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x14633, %r13
clflush (%r13)
nop
add %r12, %r12
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x17973, %rdi
nop
nop
nop
add $11034, %rsi
movb (%rdi), %bl
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0xbd2b, %rsi
lea addresses_A_ht+0x1c13a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub %rax, %rax
mov $82, %rcx
rep movsl
nop
nop
xor $14770, %rbx
lea addresses_normal_ht+0x17033, %rsi
lea addresses_D_ht+0x16033, %rdi
nop
nop
nop
xor %r9, %r9
mov $68, %rcx
rep movsw
nop
cmp %r13, %r13
lea addresses_D_ht+0x1d243, %rsi
lea addresses_A_ht+0xc633, %rdi
nop
nop
nop
dec %r12
mov $117, %rcx
rep movsq
nop
nop
cmp $42297, %r13
lea addresses_WT_ht+0x19933, %rsi
add $28134, %rcx
movl $0x61626364, (%rsi)
and %rdi, %rdi
lea addresses_WC_ht+0xc073, %rsi
nop
nop
inc %rbx
movb (%rsi), %al
add %r13, %r13
lea addresses_D_ht+0x14e33, %rax
nop
sub $58382, %rbx
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
nop
xor $15387, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WC+0xf633, %r11
nop
nop
inc %rbx
movl $0x51525354, (%r11)
nop
nop
nop
inc %rdi

// Store
lea addresses_PSE+0x16e73, %r12
cmp %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0xae64, %r10
nop
nop
nop
nop
nop
sub $11678, %rbx
movl $0x51525354, (%r10)
nop
cmp %r10, %r10

// Faulty Load
lea addresses_WC+0xf633, %rdx
nop
sub %r11, %r11
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'08': 4, '72': 1, '46': 12023, '00': 10, '09': 1, '44': 9790}
46 46 46 44 46 46 46 46 46 44 46 44 44 44 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 44 46 46 46 46 44 44 46 46 46 46 46 44 46 46 46 44 46 46 44 46 46 46 46 46 46 44 46 46 44 44 46 46 44 44 46 46 46 44 46 46 46 46 46 46 46 46 44 44 44 44 46 44 46 46 46 46 46 44 44 44 46 44 44 44 44 44 44 44 46 44 46 44 46 44 46 46 44 46 46 44 44 44 46 44 46 46 44 44 44 46 44 44 46 46 46 44 44 44 44 46 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 46 46 46 44 46 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 46 44 44 46 44 44 46 46 44 44 46 46 44 44 44 46 44 44 44 44 46 46 44 44 44 44 46 44 46 46 46 46 44 46 46 46 46 44 46 44 46 46 46 44 44 44 44 44 44 46 46 46 46 46 44 44 44 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 44 44 46 46 46 46 46 46 44 44 44 46 46 44 44 44 44 46 44 46 46 46 46 44 46 44 44 46 44 44 44 44 44 46 44 44 44 46 44 44 46 44 44 44 46 46 46 44 44 44 46 46 44 46 46 44 44 46 44 44 44 44 44 46 46 46 46 46 46 44 46 46 46 46 44 44 44 46 46 46 44 44 44 44 44 44 44 46 46 44 46 46 46 44 44 46 44 44 44 46 46 44 44 44 46 46 44 44 44 44 44 44 44 46 44 44 44 44 44 46 46 44 44 44 44 46 46 46 44 44 44 44 46 46 46 44 44 44 46 46 44 46 44 44 44 44 44 44 44 44 46 46 44 46 46 44 44 44 46 44 44 46 46 46 44 44 44 44 46 44 44 44 46 44 44 44 46 44 46 46 46 46 44 44 46 44 44 46 44 46 44 46 46 44 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 44 44 46 44 44 46 46 46 44 44 44 46 44 44 46 46 46 46 46 46 46 46 46 46 44 46 46 44 46 44 44 46 46 44 46 44 44 44 46 44 46 44 44 44 46 46 44 44 46 46 46 44 46 46 44 44 44 46 44 46 44 44 44 46 44 44 44 44 44 44 44 46 46 44 44 44 44 46 46 46 44 46 44 44 46 44 44 46 44 44 44 44 44 46 46 46 46 46 44 46 44 44 46 44 46 44 44 46 44 44 46 46 44 44 44 44 44 46 46 44 46 46 46 46 44 44 46 46 44 44 44 44 44 44 44 44 44 44 46 46 46 44 46 44 44 44 44 46 46 44 44 44 46 46 44 44 44 44 44 44 44 44 46 46 46 44 44 46 44 46 46 46 46 46 46 44 46 44 46 44 44 44 46 44 46 44 44 44 44 46 44 44 44 44 44 46 44 44 46 46 46 46 46 44 46 46 46 44 46 44 46 46 46 46 44 44 46 44 44 46 44 44 46 46 44 44 44 44 44 46 44 46 44 46 46 46 44 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 46 46 46 46 46 46 46 44 46 46 46 46 44 44 46 44 44 46 44 44 44 44 46 46 44 44 46 44 44 44 46 46 44 44 46 46 46 46 44 44 44 46 46 44 46 46 46 44 46 46 46 44 46 44 46 44 46 44 46 46 44 46 44 46 46 46 46 44 46 44 44 46 44 46 44 46 46 46 46 44 44 44 46 46 46 44 46 44 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 44 46 44 46 46 46 46 46 46 46 44 46 46 46 46 46 46 44 46 46 46 46 46 44 44 46 46 44 46 44 44 44 46 44 44 44 44 44 46 44 46 46 44 44 44 46 44 44 44 44 44 46 44 44 44 44 44 46 44 46 44 44 44 44 46 44 44 44 44 44 44 44 46 46 46 44 44 46 44 46 44 44 46 44 44 44 44 46 46 46 44 44 44 46 44 44 46 44 44 46 46 44 44 44 46 44 44 44 46 44 46 46 44 44 44 44 46 44 44 44 46 44 44 46 44 44 44 46 44 44 44
*/
