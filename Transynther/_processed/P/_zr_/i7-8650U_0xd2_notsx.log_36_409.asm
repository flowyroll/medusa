.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdf36, %rsi
nop
nop
nop
inc %rdi
mov (%rsi), %r11
nop
nop
nop
nop
cmp $43783, %rbx
lea addresses_A_ht+0x6832, %rsi
lea addresses_normal_ht+0x1548e, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $96, %rcx
rep movsw
nop
nop
nop
xor $23121, %r11
lea addresses_A_ht+0xaa8e, %rcx
nop
and %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rcx
movaps %xmm4, (%rcx)
xor %rsi, %rsi
lea addresses_D_ht+0x701a, %rsi
lea addresses_normal_ht+0x92ee, %rdi
nop
nop
nop
nop
xor $38949, %r15
mov $14, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $57947, %rbx
lea addresses_WC_ht+0xfabe, %rsi
lea addresses_A_ht+0x4c8e, %rdi
nop
nop
dec %r12
mov $3, %rcx
rep movsw
cmp $51583, %rcx
lea addresses_normal_ht+0x1975e, %rdi
nop
nop
nop
sub $4061, %rbx
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
nop
and $50260, %rcx
lea addresses_D_ht+0x1ccae, %rbx
cmp $25787, %rdi
mov (%rbx), %r15
and %rsi, %rsi
lea addresses_normal_ht+0x3742, %r12
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
xor $32694, %rdi
lea addresses_WT_ht+0x1388e, %rsi
lea addresses_UC_ht+0xb77e, %rdi
clflush (%rsi)
nop
nop
nop
xor $64733, %rbx
mov $44, %rcx
rep movsq
add $62512, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_PSE+0x1fb8e, %r11
xor %r10, %r10
movb $0x51, (%r11)
add %r10, %r10

// Store
lea addresses_PSE+0x1948e, %r15
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
xor $25927, %r11

// Store
lea addresses_UC+0x10db7, %r10
nop
nop
nop
nop
nop
sub $62278, %rax
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
nop
nop
nop
add $21787, %rbp

// Faulty Load
mov $0x88e, %r10
nop
nop
xor $29594, %rax
mov (%r10), %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
