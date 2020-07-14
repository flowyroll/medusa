.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0x1c687, %rsi
nop
nop
nop
and %rcx, %rcx
mov (%rsi), %di
nop
nop
nop
cmp $30988, %rdi

// Store
mov $0xf87, %rbp
nop
nop
nop
nop
nop
xor $38724, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
sub $18575, %rax

// Store
lea addresses_PSE+0x8e87, %rax
nop
nop
nop
and $48094, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
and $58713, %r14

// Store
lea addresses_PSE+0x1cd87, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add $10338, %r8
movw $0x5152, (%r14)
inc %rbp

// Store
lea addresses_US+0x6007, %rdi
nop
nop
xor $3972, %rcx
movw $0x5152, (%rdi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
xor $31514, %rcx

// Store
lea addresses_A+0x13aa7, %rdi
xor $31180, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_WT+0xd087, %rdi
add $3786, %rcx
mov (%rdi), %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 55}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
