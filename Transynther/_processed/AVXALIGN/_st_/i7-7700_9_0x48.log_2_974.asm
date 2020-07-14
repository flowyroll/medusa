.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13da, %rcx
clflush (%rcx)
nop
nop
nop
nop
inc %r15
mov (%rcx), %dx
nop
nop
nop
and $39079, %rbx
lea addresses_UC_ht+0xda0a, %r13
nop
nop
cmp %r11, %r11
movups (%r13), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x88d4, %r11
nop
nop
nop
nop
add $42190, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
and $33200, %r13
lea addresses_normal_ht+0x1e2ca, %rdx
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
sub $41441, %rdx
lea addresses_normal_ht+0x9b2a, %rcx
cmp $19640, %r13
movb $0x61, (%rcx)
nop
nop
nop
cmp $55916, %rcx
lea addresses_WT_ht+0x196aa, %rcx
nop
nop
nop
nop
nop
cmp $21205, %r11
movl $0x61626364, (%rcx)
dec %rbx
lea addresses_WC_ht+0x11eaa, %r11
nop
nop
cmp $65207, %rbx
mov (%r11), %r15d
nop
nop
nop
sub $49199, %rcx
lea addresses_WC_ht+0x6322, %rsi
lea addresses_normal_ht+0x1ddaa, %rdi
nop
nop
nop
nop
nop
add $19781, %r11
mov $64, %rcx
rep movsb
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x8aaa, %rcx
nop
nop
nop
nop
add %rbx, %rbx
mov (%rcx), %edx
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdx

// Store
lea addresses_US+0xabf8, %r15
sub $23253, %r11
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0x152aa, %r9
add $53167, %rcx
movl $0x51525354, (%r9)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_A+0x11a5a, %r11
nop
nop
xor $23656, %r9
movw $0x5152, (%r11)
add %r11, %r11

// Load
lea addresses_D+0x1e7aa, %rdx
nop
nop
xor %r9, %r9
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
and $28428, %r9

// Store
lea addresses_normal+0x52aa, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
movb $0x51, (%rcx)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0xcdf6, %r12
nop
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovaps %ymm6, (%r12)
nop
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_RW+0x8aaa, %rdx
clflush (%rdx)
nop
nop
nop
nop
and %r13, %r13
mov (%rdx), %r12w
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': True, 'NT': True}}
{'32': 2}
32 32
*/
